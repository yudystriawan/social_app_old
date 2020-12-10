part of 'follower_count_watcher_bloc.dart';

@freezed
abstract class FollowerCountWatcherEvent with _$FollowerCountWatcherEvent {
  const factory FollowerCountWatcherEvent.watchFollowerStarted(String userId) =
      _Started;
  const factory FollowerCountWatcherEvent.countReceived(
      Either<FollowFailure, int> failureOrCount) = _CountReceived;
}
