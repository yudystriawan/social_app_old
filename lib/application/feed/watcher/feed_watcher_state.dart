part of 'feed_watcher_bloc.dart';

@freezed
abstract class FeedWatcherState with _$FeedWatcherState {
  const factory FeedWatcherState.initial() = _Initial;
  const factory FeedWatcherState.loadInProgress() = _LoadInProgress;
  const factory FeedWatcherState.loadSuccess(List<FeedDomain> feeds) =
      _LoadSuccess;
  const factory FeedWatcherState.loadFailure(FeedFailure failure) =
      _LoadFailure;
}
