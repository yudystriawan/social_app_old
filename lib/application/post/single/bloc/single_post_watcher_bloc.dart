import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';

part 'single_post_watcher_event.dart';
part 'single_post_watcher_state.dart';
part 'single_post_watcher_bloc.freezed.dart';

@injectable
class SinglePostWatcherBloc
    extends Bloc<SinglePostWatcherEvent, SinglePostWatcherState> {
  SinglePostWatcherBloc(this._postRepository) : super(const _Initial());

  final IPostRepository _postRepository;

  StreamSubscription<Either<PostFailure, PostDomain>> _postStreamSubscription;

  @override
  Stream<SinglePostWatcherState> mapEventToState(
    SinglePostWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const SinglePostWatcherState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _postRepository
            .fetchPost(
              userId: StringSingleLine(e.userId),
              postId: StringSingleLine(e.postId),
            )
            .listen(
              (failureOrSuccess) =>
                  add(SinglePostWatcherEvent.postsReceived(failureOrSuccess)),
            );
      },
      postsReceived: (e) async* {
        yield e.failureOrPost.fold(
          (f) => SinglePostWatcherState.loadFailure(f),
          (post) => SinglePostWatcherState.loadSuccess(post),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _postStreamSubscription?.cancel();
    return super.close();
  }
}
