part of 'follower_count_watcher_bloc.dart';

@freezed
abstract class FollowerCountWatcherState with _$FollowerCountWatcherState {
  const factory FollowerCountWatcherState.initial() = _Initial;
  const factory FollowerCountWatcherState.loadInProgress() = _LoadInProgress;
  const factory FollowerCountWatcherState.loadFailure(FollowFailure failure) =
      _LoadFailure;
  const factory FollowerCountWatcherState.loadSuccess(int count) = _LoadSuccess;
}
