import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class UserDomain with _$UserDomain {
  const UserDomain._();

  const factory UserDomain({
    @required UniqueId id,
    @required Username username,
  }) = _UserDomain;

  factory UserDomain.empty() => UserDomain(
        id: UniqueId(),
        username: Username(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}
