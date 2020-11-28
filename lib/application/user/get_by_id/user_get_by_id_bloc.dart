import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

import 'package:my_social_app/domain/user/i_user_repository.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/user_failure.dart';

part 'user_get_by_id_bloc.freezed.dart';
part 'user_get_by_id_event.dart';
part 'user_get_by_id_state.dart';

@injectable
class UserGetByIdBloc extends Bloc<UserGetByIdEvent, UserGetByIdState> {
  UserGetByIdBloc(this._userRepository) : super(const _Initial());

  final IUserRepository _userRepository;

  @override
  Stream<UserGetByIdState> mapEventToState(
    UserGetByIdEvent event,
  ) async* {
    yield const UserGetByIdState.loadInProgress();
    final failureOrSuccess =
        await _userRepository.getUserById(StringSingleLine(event.userId));
    yield failureOrSuccess.fold(
      (f) => UserGetByIdState.loadFailure(f),
      (user) => UserGetByIdState.loadSuccess(user),
    );
  }
}
