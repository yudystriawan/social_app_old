part of 'user_suggest_bloc.dart';

@freezed
abstract class UserSuggestEvent with _$UserSuggestEvent {
  const factory UserSuggestEvent.getUserSuggestion(String userId) =
      _GetUserSuggestion;
}
