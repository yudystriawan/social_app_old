part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.started() = _Started;
}