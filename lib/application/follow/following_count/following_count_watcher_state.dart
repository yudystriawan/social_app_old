part of 'following_count_watcher_bloc.dart';

@freezed
abstract class FollowingCountWatcherState with _$FollowingCountWatcherState {
  const factory FollowingCountWatcherState.initial() = _Initial;
  const factory FollowingCountWatcherState.loadInProgress() = _LoadInProgress;
  const factory FollowingCountWatcherState.loadFailure(FollowFailure failure) =
      _LoadFailure;
  const factory FollowingCountWatcherState.loadSuccess(int count) =
      _LoadSuccess;
}
