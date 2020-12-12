import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';
import 'package:my_social_app/domain/user/i_user_repository.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/user_failure.dart';

part 'user_suggest_event.dart';
part 'user_suggest_state.dart';
part 'user_suggest_bloc.freezed.dart';

@injectable
class UserSuggestBloc extends Bloc<UserSuggestEvent, UserSuggestState> {
  UserSuggestBloc(this._userRepository, this._followRepository)
      : super(const UserSuggestState.initial());

  final IUserRepository _userRepository;
  final IFollowRepository _followRepository;

  @override
  Stream<UserSuggestState> mapEventToState(
    UserSuggestEvent event,
  ) async* {
    yield const UserSuggestState.loadInProgress();

    final failureOrUsers = await _userRepository.fetchUsers();

    yield* failureOrUsers.fold(
      (failure) async* {
        yield UserSuggestState.loadFailure(failure);
      },
      (users) async* {
        // yield UserSuggestState.loadSuccess(users);
        final failureOrFollowingIds = await _followRepository
            .fetchFollowingUserIds(StringSingleLine(event.userId));

        final followingIds = failureOrFollowingIds.fold(
          (_) => List<StringSingleLine>.empty(),
          (ids) => ids,
        );

        final listUserSuggest = users.where((user) {
          final isAuthUser = user.id.getOrCrash() == event.userId;
          final isAlreadyFollowed =
              followingIds.contains(StringSingleLine(event.userId));

          return !isAuthUser && !isAlreadyFollowed;
        }).toList();

        yield UserSuggestState.loadSuccess(listUserSuggest);
      },
    );
  }
}
