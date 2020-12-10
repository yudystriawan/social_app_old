import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/feed/i_feed_repository.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/value_objects.dart';

part 'follow_actor_event.dart';
part 'follow_actor_state.dart';
part 'follow_actor_bloc.freezed.dart';

@injectable
class FollowActorBloc extends Bloc<FollowActorEvent, FollowActorState> {
  FollowActorBloc(this._followRepository, this._feedRepository)
      : super(const _Initial());

  final IFollowRepository _followRepository;
  final IFeedRepository _feedRepository;

  @override
  Stream<FollowActorState> mapEventToState(
    FollowActorEvent event,
  ) async* {
    yield const FollowActorState.actionInProgress();

    final failureOrSuccess = await _followRepository.toggleFollow(
      userId: StringSingleLine(event.userId),
      isFollowing: event.isFollowing,
    );

    yield* failureOrSuccess.fold(
      (failure) async* {
        yield FollowActorState.followFailure(failure);
      },
      (isFollowing) async* {
        final feed = FeedDomain.empty();

        if (isFollowing) {
          //if success follow user then create feed activity
          await _feedRepository.create(
            ownerUserId: StringSingleLine(event.userId),
            feed: feed.copyWith.call(
              type: StringSingleLine('follow'),
              username:
                  StringSingleLine(event.currentUser.username.getOrCrash()),
              userId: StringSingleLine(event.currentUser.id.getOrCrash()),
              userAvatarUrl: PhotoUrl(event.currentUser.photoUrl.getOrCrash()),
            ),
          );
        } else {
          //if success unfollow user then remove feed activity
          await _feedRepository.delete(
            ownerUserId: StringSingleLine(event.userId),
            currentUserOrPostId:
                StringSingleLine(event.currentUser.id.getOrCrash()),
          );
        }

        yield FollowActorState.followSuccess(isFollowing: isFollowing);
      },
    );
  }
}
