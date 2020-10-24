import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String id,
    @required String username,
  }) = _UserDto;

  factory UserDto.fromDomain(UserDomain user) {
    return UserDto(
      id: user.id.getOrCrash(),
      username: user.username.getOrCrash(),
    );
  }

  UserDomain toDomain() {
    return UserDomain(
      id: UniqueId.fromUniqueString(id),
      username: Username(username),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith.call(id: doc.id);
  }
}
