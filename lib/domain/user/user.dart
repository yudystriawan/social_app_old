import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class UserDomain with _$UserDomain {
  const UserDomain._();

  const factory UserDomain({
    @required UniqueId id,
    @required Username username,
    @required Name name,
    @required EmailAddress email,
    @required PhotoUrl photoUrl,
    @required Bio bio,
  }) = _UserDomain;

  factory UserDomain.empty() => UserDomain(
        id: UniqueId(),
        username: Username(''),
        name: Name(''),
        email: EmailAddress(''),
        photoUrl: PhotoUrl(''),
        bio: Bio(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(photoUrl.failureOrUnit)
        .andThen(bio.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
