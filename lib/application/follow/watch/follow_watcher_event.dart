part of 'follow_watcher_bloc.dart';

@freezed
abstract class FollowWatcherEvent with _$FollowWatcherEvent {
  const factory FollowWatcherEvent.watchUserFollowing(String userId) =
      _WatchUserFollowing;
  const factory FollowWatcherEvent.dataReceived(
      Either<FollowFailure, bool> failureOrData) = _DataReceived;
}
