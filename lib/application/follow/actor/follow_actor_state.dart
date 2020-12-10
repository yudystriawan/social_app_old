part of 'follow_actor_bloc.dart';

@freezed
abstract class FollowActorState with _$FollowActorState {
  const factory FollowActorState.initial() = _Initial;
  const factory FollowActorState.actionInProgress() = _ActionInProgress;
  const factory FollowActorState.followFailure(FollowFailure failure) =
      _ActionFollowFailure;
  const factory FollowActorState.followSuccess({bool isFollowing}) =
      _FollowSuccess;
}
