part of 'user_suggest_bloc.dart';

@freezed
abstract class UserSuggestState with _$UserSuggestState {
  const factory UserSuggestState.initial() = _Initial;
  const factory UserSuggestState.loadInProgress() = _LoadInProgress;
  const factory UserSuggestState.loadFailure(UserFailure failure) =
      _LoadFailure;
  const factory UserSuggestState.loadSuccess(List<UserDomain> users) =
      _LoadSuccess;
}
