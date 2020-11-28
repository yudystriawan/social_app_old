part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.toggleLike(
    String ownerId,
    String postId,
  ) = _ToggleLike;
}
