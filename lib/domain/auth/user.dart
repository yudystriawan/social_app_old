import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class UserDomain with _$UserDomain {
  const factory UserDomain({
    @required UniqueId id,
  }) = _UserDomain;
}
