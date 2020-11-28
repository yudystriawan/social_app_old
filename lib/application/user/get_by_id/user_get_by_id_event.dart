part of 'user_get_by_id_bloc.dart';

@freezed
abstract class UserGetByIdEvent with _$UserGetByIdEvent {
  const factory UserGetByIdEvent.getUserById(String userId) = _Started;
}
