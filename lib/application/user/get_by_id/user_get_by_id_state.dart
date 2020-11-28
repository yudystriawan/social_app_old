part of 'user_get_by_id_bloc.dart';

@freezed
abstract class UserGetByIdState with _$UserGetByIdState {
  const factory UserGetByIdState.initial() = _Initial;
  const factory UserGetByIdState.loadInProgress() = _LoadInProgress;
  const factory UserGetByIdState.loadFailure(UserFailure failure) =
      _LoadFailure;
  const factory UserGetByIdState.loadSuccess(UserDomain user) = _LoadSuccess;
}
