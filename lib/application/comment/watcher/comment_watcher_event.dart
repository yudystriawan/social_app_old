part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherEvent with _$CommentWatcherEvent {
  const factory CommentWatcherEvent.watchAllStarted(String postId) =
      _WatcheAllStarted;
  const factory CommentWatcherEvent.commentReceived(
          Either<CommentFailure, List<CommentDomain>> failureOrComments) =
      _CommentReceived;
}
