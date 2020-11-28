import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/file/i_file_repository.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';
import 'package:my_social_app/domain/post/value_objects.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  PostFormBloc(
    this._postRepository,
    this._fileRepository,
  ) : super(PostFormState.initial());

  final IPostRepository _postRepository;
  final IFileRepository _fileRepository;

  @override
  Stream<PostFormState> mapEventToState(
    PostFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialPost.fold(
          () => state,
          (post) => state.copyWith.call(
            post: post,
            isEditing: true,
          ),
        );
      },
      userIdChanged: (e) async* {
        yield state.copyWith.call(
          post: state.post.copyWith.call(
            userId: StringSingleLine(e.userIdStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      fileImageChanged: (e) async* {
        yield e.imageFile.fold(
          () => state,
          (fileImage) => state.copyWith.call(
            imageFile: fileImage,
          ),
        );
      },
      imageChanged: (e) async* {
        yield state.copyWith.call(
          post: state.post.copyWith.call(
            imageUrl: PostImageUrl(e.imagePath),
          ),
          failureOrSuccessOption: none(),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith.call(
          post: state.post.copyWith.call(
            body: PostBody(e.bodyStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith.call(
          post: state.post.copyWith.call(
            location: PostLocation(e.locationStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      submit: (e) async* {
        Either<PostFailure, Unit> failureOrSuccess;

        yield state.copyWith.call(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        if (state.post.failureOption.isNone()) {
          PostDomain newPost;
          final downloadUrlFailureOrSuccess =
              await _fileRepository.uploadPostFileImage(
            imageFile: state.imageFile,
            postId: state.post.id,
          );
          downloadUrlFailureOrSuccess.fold(
            (_) => failureOrSuccess = left(const PostFailure.unexpected()),
            (downloadUrl) {
              newPost = PostDomain(
                id: state.post.id,
                userId: state.post.userId,
                imageUrl: PostImageUrl(downloadUrl.getOrCrash()),
                body: state.post.body,
                location: state.post.location,
              );
            },
          );
          if (newPost != null &&
              newPost.failureOption.isNone() &&
              newPost.imageUrl.isValid()) {
            failureOrSuccess = await _postRepository.create(newPost);
          }
        }

        yield state.copyWith.call(
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
