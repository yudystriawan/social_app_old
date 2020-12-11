import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';

part 'timeline_watcher_event.dart';
part 'timeline_watcher_state.dart';
part 'timeline_watcher_bloc.freezed.dart';

@injectable
class TimelineWatcherBloc
    extends Bloc<TimelineWatcherEvent, TimelineWatcherState> {
  TimelineWatcherBloc(this._postRepository)
      : super(const TimelineWatcherState.initial());

  final IPostRepository _postRepository;

  StreamSubscription<Either<PostFailure, List<PostDomain>>>
      _postStreamSubscription;

  @override
  Stream<TimelineWatcherState> mapEventToState(
    TimelineWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TimelineWatcherState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _postRepository.fetchTimelinePosts().listen(
            (failureOrPosts) =>
                add(TimelineWatcherEvent.postsReceived(failureOrPosts)));
      },
      postsReceived: (e) async* {
        yield e.failureOrPosts.fold(
          (failure) => TimelineWatcherState.loadFailure(failure),
          (posts) => TimelineWatcherState.loadSuccess(posts),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription?.cancel();
    return super.close();
  }
}
