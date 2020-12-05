import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/comment_failure.dart';
import 'package:my_social_app/domain/comment/i_comment_repository.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';
part 'comment_watcher_bloc.freezed.dart';

@injectable
class CommentWatcherBloc
    extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  CommentWatcherBloc(this._commentRepository) : super(const _Initial());

  final ICommentRepository _commentRepository;

  StreamSubscription<Either<CommentFailure, List<CommentDomain>>>
      _commentStreamSubscription;

  @override
  Stream<CommentWatcherState> mapEventToState(
    CommentWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CommentWatcherState.loadInProgress();
        await _commentStreamSubscription?.cancel();
        _commentStreamSubscription = _commentRepository
            .getComments(StringSingleLine(e.postId))
            .listen((failureOrSuccess) =>
                add(CommentWatcherEvent.commentReceived(failureOrSuccess)));
      },
      commentReceived: (e) async* {
        yield e.failureOrComments.fold(
          (f) => CommentWatcherState.loadFailure(f),
          (comments) => CommentWatcherState.loadSuccess(comments),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _commentStreamSubscription?.cancel();
    return super.close();
  }
}
