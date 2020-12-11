part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.toggleLike({
    @required UserDomain currentUser,
    @required PostDomain post,
    @required String ownerId,
  }) = _ToggleLike;
  const factory PostActorEvent.deleted(PostDomain post) = _Deleted;
}
