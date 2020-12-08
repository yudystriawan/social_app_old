import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/feed/feed_failure.dart';
import 'package:my_social_app/domain/feed/i_feed_repository.dart';

part 'feed_watcher_bloc.freezed.dart';
part 'feed_watcher_event.dart';
part 'feed_watcher_state.dart';

@injectable
class FeedWatcherBloc extends Bloc<FeedWatcherEvent, FeedWatcherState> {
  FeedWatcherBloc(
    this._feedRepository,
  ) : super(const _Initial());

  final IFeedRepository _feedRepository;

  StreamSubscription<Either<FeedFailure, List<FeedDomain>>>
      _feedStreamSubscription;

  @override
  Stream<FeedWatcherState> mapEventToState(
    FeedWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const FeedWatcherState.loadInProgress();
        await _feedStreamSubscription?.cancel();
        _feedStreamSubscription = _feedRepository
            .fetchFeeds(StringSingleLine(e.userId))
            .listen((failureOrSuccess) =>
                add(FeedWatcherEvent.postsReceived(failureOrSuccess)));
      },
      postsReceived: (e) async* {
        yield e.failureOrFeeds.fold(
          (f) => FeedWatcherState.loadFailure(f),
          (feeds) => FeedWatcherState.loadSuccess(feeds),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _feedStreamSubscription?.cancel();
    return super.close();
  }
}
