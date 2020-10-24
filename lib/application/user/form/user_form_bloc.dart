import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/domain/user/i_user_repository.dart';
import 'package:my_social_app/domain/user/user_failure.dart';

part 'user_form_bloc.freezed.dart';
part 'user_form_event.dart';
part 'user_form_state.dart';

@injectable
class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc(this._userRepository) : super(UserFormState.initial());

  final IUserRepository _userRepository;

  @override
  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUser.fold(
          () => state,
          (user) => state.copyWith.call(
            user: user,
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith.call(
          user: state.user.copyWith.call(
            name: Name(e.nameStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith.call(
          user: state.user.copyWith.call(
            username: Username(e.usernameStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith.call(
          user: state.user.copyWith.call(
            email: EmailAddress(e.emailStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      bioChanged: (e) async* {
        yield state.copyWith.call(
          user: state.user.copyWith.call(
            bio: Bio(e.bioStr),
          ),
          failureOrSuccessOption: none(),
        );
      },
      submit: (e) async* {
        Either<UserFailure, Unit> failureOrSuccess;

        yield state.copyWith.call(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        if (state.user.failureOption.isNone()) {
          failureOrSuccess = await _userRepository.update(state.user);
        }

        yield state.copyWith.call(
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
