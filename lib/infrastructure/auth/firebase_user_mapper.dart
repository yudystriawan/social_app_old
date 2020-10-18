import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  UserDomain toDomain() {
    return UserDomain(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
