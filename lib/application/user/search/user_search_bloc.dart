import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/user/i_user_repository.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/user_failure.dart';

part 'user_search_event.dart';
part 'user_search_state.dart';
part 'user_search_bloc.freezed.dart';

@injectable
class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  UserSearchBloc(this._userRepository) : super(const UserSearchState.initial());

  final IUserRepository _userRepository;

  @override
  Stream<UserSearchState> mapEventToState(
    UserSearchEvent event,
  ) async* {
    yield const UserSearchState.loadInProgress();

    final failureOrSuccess = await _userRepository.find(
      StringSingleLine(event.queryStr),
    );

    yield failureOrSuccess.fold(
      (failure) => UserSearchState.loadFailure(failure),
      (users) => UserSearchState.loadSuccess(users),
    );
  }
}
