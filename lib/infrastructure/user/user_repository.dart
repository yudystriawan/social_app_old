import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/i_user_repository.dart';
import 'package:my_social_app/domain/user/user_failure.dart';
import 'package:my_social_app/infrastructure/auth/user_dtos.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';

@Injectable(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Future<Either<UserFailure, Unit>> update(UserDomain user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.update(userDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
