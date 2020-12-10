import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/comment_failure.dart';
import 'package:my_social_app/domain/comment/i_comment_repository.dart';
import 'package:my_social_app/domain/comment/value_objects.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/feed/i_feed_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/value_objects.dart';

part 'comment_form_bloc.freezed.dart';
part 'comment_form_event.dart';
part 'comment_form_state.dart';

@injectable
class CommentFormBloc extends Bloc<CommentFormEvent, CommentFormState> {
  CommentFormBloc(
    this._commentRepository,
    this._feedRepository,
  ) : super(CommentFormState.initial());

  final ICommentRepository _commentRepository;
  final IFeedRepository _feedRepository;

  @override
  Stream<CommentFormState> mapEventToState(
    CommentFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialComment.fold(
          () => state,
          (comment) => state.copyWith.call(
            comment: comment,
            isEditing: true,
          ),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith.call(
          comment: state.comment.copyWith.call(
            body: CommentBody(e.bodyStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith.call(
          comment: state.comment.copyWith.call(
            username: StringSingleLine(e.usernameStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      avatarUrlChanged: (e) async* {
        yield state.copyWith.call(
          comment: state.comment.copyWith.call(
            avatarUrl: PhotoUrl(e.url),
          ),
          failureOrSuccessOption: none(),
        );
      },
      userIdChanged: (e) async* {
        yield state.copyWith.call(
          comment: state.comment.copyWith.call(
            userId: StringSingleLine(e.userId),
          ),
          failureOrSuccessOption: none(),
        );
      },
      submit: (e) async* {
        Either<CommentFailure, Unit> failureOrSuccess;

        yield state.copyWith.call(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        if (state.comment.failureOption.isNone()) {
          failureOrSuccess = await _commentRepository.create(
            comment: state.comment,
            postId: StringSingleLine(e.post.id.getOrCrash()),
          );
        }

        final isNotMyPost = state.comment.userId != e.post.userId;

        if (failureOrSuccess.isRight() && isNotMyPost) {
          final feed = FeedDomain.empty();

          await _feedRepository.create(
            ownerUserId: StringSingleLine(e.post.userId.getOrCrash()),
            feed: feed.copyWith.call(
              type: StringSingleLine('comment'),
              username: StringSingleLine(state.comment.username.getOrCrash()),
              userId: StringSingleLine(state.comment.userId.getOrCrash()),
              postId: StringSingleLine(e.post.id.getOrCrash()),
              userAvatarUrl: PhotoUrl(state.comment.avatarUrl.getOrCrash()),
              thumbnailUrl: PhotoUrl(e.post.imageUrl.getOrCrash()),
              commentBody: state.comment.body,
            ),
          );
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
