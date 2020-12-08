part of 'single_post_watcher_bloc.dart';

@freezed
abstract class SinglePostWatcherEvent with _$SinglePostWatcherEvent {
  const factory SinglePostWatcherEvent.watchAllStarted({
    @required String userId,
    @required String postId,
  }) = _WatchAllStarted;
  const factory SinglePostWatcherEvent.postsReceived(
    Either<PostFailure, PostDomain> failureOrPost,
  ) = _PostReceived;
}
