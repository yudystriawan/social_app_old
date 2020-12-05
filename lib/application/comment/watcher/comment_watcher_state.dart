part of 'comment_watcher_bloc.dart';

@freezed
abstract class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;
  const factory CommentWatcherState.loadInProgress() = _LoadInProgress;
  const factory CommentWatcherState.loadSuccess(List<CommentDomain> comments) =
      _LoadSuccess;
  const factory CommentWatcherState.loadFailure(CommentFailure failure) =
      _LoadFailure;
}
