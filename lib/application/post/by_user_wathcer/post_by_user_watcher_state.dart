part of 'post_by_user_watcher_bloc.dart';

@freezed
abstract class PostByUserWatcherState with _$PostByUserWatcherState {
  const factory PostByUserWatcherState.initial() = _Initial;
  const factory PostByUserWatcherState.loadInProgress() = _LoadInProgress;
  const factory PostByUserWatcherState.loadSuccess(List<PostDomain> posts) =
      _LoadSuccess;
  const factory PostByUserWatcherState.loadFailure(PostFailure failure) =
      _LoadFailure;
}
