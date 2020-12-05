part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = _Initial;
  const factory PostActorState.actionInPorgress() = _ActionInProgress;
  const factory PostActorState.likeFailure(PostFailure failure) = _LikeFailure;
  const factory PostActorState.likeSuccess({bool isLike}) = _LikeSuccess;
}
