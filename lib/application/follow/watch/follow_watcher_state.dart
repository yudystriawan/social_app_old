part of 'follow_watcher_bloc.dart';

@freezed
abstract class FollowWatcherState with _$FollowWatcherState {
  const factory FollowWatcherState.initial() = _Initial;
  const factory FollowWatcherState.loadInProgress() = _LoadInProgress;
  const factory FollowWatcherState.loadFailure(FollowFailure failure) =
      _LoadFailure;
  const factory FollowWatcherState.loadSuccess({bool isFollowing}) =
      _LoadSuccess;
}
