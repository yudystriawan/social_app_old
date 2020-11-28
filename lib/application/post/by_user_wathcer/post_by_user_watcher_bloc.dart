import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';

part 'post_by_user_watcher_event.dart';
part 'post_by_user_watcher_state.dart';
part 'post_by_user_watcher_bloc.freezed.dart';

@injectable
class PostByUserWatcherBloc
    extends Bloc<PostByUserWatcherEvent, PostByUserWatcherState> {
  PostByUserWatcherBloc(this._postRepository) : super(const _Initial());

  final IPostRepository _postRepository;

  StreamSubscription<Either<PostFailure, List<PostDomain>>>
      _postStreamSubscription;

  @override
  Stream<PostByUserWatcherState> mapEventToState(
    PostByUserWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const PostByUserWatcherState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _postRepository
            .getMyPosts(StringSingleLine(e.userId))
            .listen((failureOrSuccess) => add(
                  PostByUserWatcherEvent.postsReceived(failureOrSuccess),
                ));
      },
      postsReceived: (e) async* {
        yield e.failureOrPosts.fold(
          (f) => PostByUserWatcherState.loadFailure(f),
          (posts) => PostByUserWatcherState.loadSuccess(posts),
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
