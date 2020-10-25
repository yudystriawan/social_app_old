part of 'user_search_bloc.dart';

@freezed
abstract class UserSearchState with _$UserSearchState {
  const factory UserSearchState.initial() = _Initial;
  const factory UserSearchState.loadInProgress() = _LoadInProgress;
  const factory UserSearchState.loadFailure(UserFailure failure) = _LoadFailure;
  const factory UserSearchState.loadSuccess(List<UserDomain> users) =
      _LoadSuccess;
}
