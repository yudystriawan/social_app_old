import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> update(UserDomain user);
}
