part of 'timeline_watcher_bloc.dart';

@freezed
abstract class TimelineWatcherEvent with _$TimelineWatcherEvent {
  const factory TimelineWatcherEvent.watchAllStarted(String userId) =
      _WatchAllStarted;
  const factory TimelineWatcherEvent.postsReceived(
    Either<PostFailure, List<PostDomain>> failureOrPosts,
  ) = _PostsReceived;
}
