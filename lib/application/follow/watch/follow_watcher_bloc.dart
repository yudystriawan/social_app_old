import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';

part 'follow_watcher_bloc.freezed.dart';
part 'follow_watcher_event.dart';
part 'follow_watcher_state.dart';

@injectable
class FollowWatcherBloc extends Bloc<FollowWatcherEvent, FollowWatcherState> {
  FollowWatcherBloc(this._followRepository)
      : super(const FollowWatcherState.initial());

  final IFollowRepository _followRepository;

  StreamSubscription<Either<FollowFailure, bool>> _followStreamSubscription;

  @override
  Stream<FollowWatcherState> mapEventToState(
    FollowWatcherEvent event,
  ) async* {
    yield* event.map(
      watchUserFollowing: (e) async* {
        yield const FollowWatcherState.loadInProgress();
        await _followStreamSubscription?.cancel();
        _followStreamSubscription = _followRepository
            .checkFollowUser(StringSingleLine(e.userId))
            .listen((failureOrSuccess) =>
                add(FollowWatcherEvent.dataReceived(failureOrSuccess)));
      },
      dataReceived: (e) async* {
        yield e.failureOrData.fold(
          (f) => FollowWatcherState.loadFailure(f),
          (value) => FollowWatcherState.loadSuccess(isFollowing: value),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _followStreamSubscription?.cancel();
    return super.close();
  }
}
