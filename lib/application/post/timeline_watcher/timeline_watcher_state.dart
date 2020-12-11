part of 'timeline_watcher_bloc.dart';

@freezed
abstract class TimelineWatcherState with _$TimelineWatcherState {
  const factory TimelineWatcherState.initial() = _Initial;
  const factory TimelineWatcherState.loadInProgress() = _LoadInProgress;
  const factory TimelineWatcherState.loadSuccess(List<PostDomain> posts) =
      _LoadSuccess;
  const factory TimelineWatcherState.loadFailure(PostFailure failure) =
      _LoadFailure;
}
