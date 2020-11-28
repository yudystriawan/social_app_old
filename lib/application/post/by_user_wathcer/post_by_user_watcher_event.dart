part of 'post_by_user_watcher_bloc.dart';

@freezed
abstract class PostByUserWatcherEvent with _$PostByUserWatcherEvent {
  const factory PostByUserWatcherEvent.watchAllStarted(String userId) =
      _WatchAllStarted;
  const factory PostByUserWatcherEvent.postsReceived(
    Either<PostFailure, List<PostDomain>> failureOrPosts,
  ) = _PostsReceived;
}
