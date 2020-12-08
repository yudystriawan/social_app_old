part of 'feed_watcher_bloc.dart';

@freezed
abstract class FeedWatcherEvent with _$FeedWatcherEvent {
  const factory FeedWatcherEvent.watchAllStarted(String userId) =
      _WatchAllStarted;
  const factory FeedWatcherEvent.postsReceived(
    Either<FeedFailure, List<FeedDomain>> failureOrFeeds,
  ) = _FeedsReceived;
}
