import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
  ) : super(const _Initial());

  final IPostRepository _postRepository;
  final IFeedRepository _feedRepository;

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    yield const PostActorState.actionInPorgress();
    final failureOrSuccess = await _postRepository.toggleLike(
      postId: StringSingleLine(event.post.id.getOrCrash()),
      ownerId: StringSingleLine(event.ownerId),
    );

    final isNotMyPost = event.post.userId.getOrCrash() != event.ownerId;

    if (failureOrSuccess.isRight() && isNotMyPost) {
      final feed = FeedDomain.empty();

      final isLike = failureOrSuccess.fold((l) => false, (isLike) => isLike);

      if (isLike) {
        await _feedRepository.create(
          ownerUserId: StringSingleLine(event.ownerId),
          feed: feed.copyWith.call(
              type: StringSingleLine('like'),
              username:
                  StringSingleLine(event.currentUser.username.getOrCrash()),
              userId: StringSingleLine(event.currentUser.id.getOrCrash()),
              postId: StringSingleLine(event.post.id.getOrCrash()),
              userAvatarUrl: PhotoUrl(event.currentUser.photoUrl.getOrCrash()),
              thumbnailUrl: PhotoUrl(event.post.imageUrl.getOrCrash())),
        );
      } else {
        await _feedRepository.delete(
          ownerUserId: StringSingleLine(event.ownerId),
          postId: StringSingleLine(event.post.id.getOrCrash()),
        );
      }
    }

    yield failureOrSuccess.fold(
      (failure) => PostActorState.likeFailure(failure),
      (isLike) => PostActorState.likeSuccess(isLike: isLike),
    );
  }
}
