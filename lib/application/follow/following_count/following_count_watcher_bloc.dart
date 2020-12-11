import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';

part 'following_count_watcher_bloc.freezed.dart';
part 'following_count_watcher_event.dart';
part 'following_count_watcher_state.dart';

@injectable
class FollowingCountWatcherBloc
    extends Bloc<FollowingCountWatcherEvent, FollowingCountWatcherState> {
  FollowingCountWatcherBloc(this._followRepository)
      : super(const FollowingCountWatcherState.initial());

  final IFollowRepository _followRepository;

  StreamSubscription<Either<FollowFailure, int>> _followingStreamSubscription;

  @override
  Stream<FollowingCountWatcherState> mapEventToState(
    FollowingCountWatcherEvent event,
  ) async* {
    yield* event.map(
      watchFollowingStarted: (e) async* {
        yield const FollowingCountWatcherState.loadInProgress();
        await _followingStreamSubscription?.cancel();
        _followingStreamSubscription = _followRepository
            .fetchFollowingCount(StringSingleLine(e.userId))
            .listen((failureOrCount) =>
                add(FollowingCountWatcherEvent.countReceived(failureOrCount)));
      },
      countReceived: (e) async* {
        yield e.failureOrCount.fold(
          (f) => FollowingCountWatcherState.loadFailure(f),
          (count) => FollowingCountWatcherState.loadSuccess(count),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _followingStreamSubscription?.cancel();
    return super.close();
  }
}
