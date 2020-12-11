import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/comment/i_comment_repository.dart';

import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/feed/i_feed_repository.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/value_objects.dart';

part 'post_actor_bloc.freezed.dart';
part 'post_actor_event.dart';
part 'post_actor_state.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  PostActorBloc(
    this._postRepository,
    this._feedRepository,
    this._commentRepository,
  ) : super(const PostActorState.initial());

  final IPostRepository _postRepository;
  final IFeedRepository _feedRepository;
  final ICommentRepository _commentRepository;

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    yield* event.map(
      toggleLike: (e) async* {
        yield const PostActorState.actionInPorgress();
        final failureOrLiked = await _postRepository.toggleLike(
          postId: StringSingleLine(e.post.id.getOrCrash()),
          ownerId: StringSingleLine(e.ownerId),
        );

        yield* failureOrLiked.fold(
          (failure) async* {
            yield PostActorState.likeFailure(failure);
          },
          (isLike) async* {
            final feed = FeedDomain.empty();

            if (isLike) {
              await _feedRepository.create(
                ownerUserId: StringSingleLine(e.ownerId),
                feed: feed.copyWith.call(
                    type: StringSingleLine('like'),
                    username:
                        StringSingleLine(e.currentUser.username.getOrCrash()),
                    userId: StringSingleLine(e.currentUser.id.getOrCrash()),
                    postId: StringSingleLine(e.post.id.getOrCrash()),
                    userAvatarUrl:
                        PhotoUrl(e.currentUser.photoUrl.getOrCrash()),
                    thumbnailUrl: PhotoUrl(e.post.imageUrl.getOrCrash())),
              );
            } else {
              await _feedRepository.delete(
                ownerUserId: StringSingleLine(e.ownerId),
                currentUserOrPostId: StringSingleLine(e.post.id.getOrCrash()),
              );
            }

            yield PostActorState.likeSuccess(isLike: isLike);
          },
        );
      },
      deleted: (e) async* {
        yield const PostActorState.actionInPorgress();

        final failureOrSuccess = await _postRepository.delete(e.post);

        yield* failureOrSuccess.fold(
          (failure) async* {
            yield PostActorState.deleteFailure(failure);
          },
          (_) async* {
            //delete feed activity related
            await _feedRepository.deletePostRelated(
              ownerUserId: e.post.userId,
              currentUserOrPostId: StringSingleLine(e.post.id.getOrCrash()),
            );

            //delete comment related
            await _commentRepository
                .deleteByPostId(StringSingleLine(e.post.id.getOrCrash()));

            yield const PostActorState.deleteSuccess();
          },
        );
      },
    );
  }
}
