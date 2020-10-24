import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';
part 'user_form_bloc.freezed.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc() : super(const _Initial());

  @override
  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
