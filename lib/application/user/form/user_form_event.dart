part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initialized(Option<UserDomain> initialUser) =
      _Initialized;
  const factory UserFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory UserFormEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory UserFormEvent.emailChanged(String emailStr) = _emailChanged;
  const factory UserFormEvent.bioChanged(String bioStr) = _BioChanged;
  const factory UserFormEvent.submit() = _Submit;
}
