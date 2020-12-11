import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';

part 'follower_count_watcher_bloc.freezed.dart';
part 'follower_count_watcher_event.dart';
part 'follower_count_watcher_state.dart';

@injectable
class FollowerCountWatcherBloc
    extends Bloc<FollowerCountWatcherEvent, FollowerCountWatcherState> {
  FollowerCountWatcherBloc(this._followRepository)
      : super(const FollowerCountWatcherState.initial());

  final IFollowRepository _followRepository;

  StreamSubscription<Either<FollowFailure, int>> _followerStreamSubscription;

  @override
  Stream<FollowerCountWatcherState> mapEventToState(
    FollowerCountWatcherEvent event,
  ) async* {
    yield* event.map(
      watchFollowerStarted: (e) async* {
        yield const FollowerCountWatcherState.loadInProgress();
        await _followerStreamSubscription?.cancel();
        _followerStreamSubscription = _followRepository
            .fetchFollowerCount(StringSingleLine(e.userId))
            .listen((failureOrCount) =>
                add(FollowerCountWatcherEvent.countReceived(failureOrCount)));
      },
      countReceived: (e) async* {
        yield e.failureOrCount.fold(
          (f) => FollowerCountWatcherState.loadFailure(f),
          (count) => FollowerCountWatcherState.loadSuccess(count),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _followerStreamSubscription?.cancel();
    return super.close();
  }
}
