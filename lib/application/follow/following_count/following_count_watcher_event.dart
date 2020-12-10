part of 'following_count_watcher_bloc.dart';

@freezed
abstract class FollowingCountWatcherEvent with _$FollowingCountWatcherEvent {
  const factory FollowingCountWatcherEvent.watchFollowingStarted(
      String userId) = _Started;
  const factory FollowingCountWatcherEvent.countReceived(
      Either<FollowFailure, int> failureOrCount) = _CountReceived;
}
