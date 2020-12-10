import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_failure.freezed.dart';

@freezed
abstract class FollowFailure with _$FollowFailure {
  const factory FollowFailure.unexpected() = _Unexpected;
}
