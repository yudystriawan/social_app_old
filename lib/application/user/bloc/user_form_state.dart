part of 'user_form_bloc.dart';

@freezed
abstract class UserFormState with _$UserFormState {
  const factory UserFormState.initial() = _Initial;
}
