import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/auth/auth_failure.dart';
import 'package:my_social_app/domain/auth/i_auth_repository.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  @override
  Future<Option<UserDomain>> getSignedInUser() async {
    return none();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
