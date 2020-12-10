part of 'follow_actor_bloc.dart';

@freezed
abstract class FollowActorEvent with _$FollowActorEvent {
  const factory FollowActorEvent.toggleFollow({
    @required String userId,
    @required UserDomain currentUser,
    @required bool isFollowing,
  }) = _ToggleFollow;
}
