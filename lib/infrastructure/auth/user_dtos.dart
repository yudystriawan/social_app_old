import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/user/value_objects.dart';
import 'package:my_social_app/infrastructure/core/timestamp.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String id,
    @required String username,
    @required String name,
    @required String email,
    @JsonKey(name: 'photo_url') @required String photoUrl,
    @required String bio,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _UserDto;

  factory UserDto.fromDomain(UserDomain user) {
    return UserDto(
      id: user.id.getOrCrash(),
      username: user.username.value.fold((_) => '', (r) => r),
      name: user.name.getOrCrash(),
      email: user.email.getOrCrash(),
      photoUrl: user.photoUrl.getOrCrash(),
      bio: user.bio.value.fold((_) => '', (r) => r),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  UserDomain toDomain() {
    return UserDomain(
      id: UniqueId.fromUniqueString(id),
      username: Username(username),
      name: Name(name),
      email: EmailAddress(email),
      photoUrl: PhotoUrl(photoUrl),
      bio: Bio(bio),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith.call(id: doc.id);
  }
}
