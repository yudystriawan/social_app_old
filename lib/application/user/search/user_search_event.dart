part of 'user_search_bloc.dart';

@freezed
abstract class UserSearchEvent with _$UserSearchEvent {
  const factory UserSearchEvent.search(String queryStr) = _Search;
}
