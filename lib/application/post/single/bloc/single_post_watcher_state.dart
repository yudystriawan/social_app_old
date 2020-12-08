part of 'single_post_watcher_bloc.dart';

@freezed
abstract class SinglePostWatcherState with _$SinglePostWatcherState {
  const factory SinglePostWatcherState.initial() = _Initial;
  const factory SinglePostWatcherState.loadInProgress() = _LoadInProgress;
  const factory SinglePostWatcherState.loadSuccess(PostDomain post) =
      _LoadSuccess;
  const factory SinglePostWatcherState.loadFailure(PostFailure failure) =
      _LoadFailure;
}
