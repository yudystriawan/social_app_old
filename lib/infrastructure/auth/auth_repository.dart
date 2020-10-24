import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/auth/auth_failure.dart';
import 'package:my_social_app/domain/auth/i_auth_repository.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/domain/auth/value_objects.dart';
import 'package:my_social_app/infrastructure/auth/user_dtos.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';

import 'firebase_user_mapper.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  @override
  Future<Option<UserDomain>> getSignedInUser() async {
    final userDoc = await (await _firestore.userDocument()).get();

    return userDoc.exists
        ? optionOf(UserDto.fromFirestore(userDoc).toDomain())
        : none();
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
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      final currentUser = _firebaseAuth.currentUser;
      final userDoc = await _firestore.userDocument();
      final user = await userDoc.get();

      if (!user.exists) {
        final userDto = UserDto.fromDomain(currentUser.toDomain());
        userDoc.set(userDto.toJson());
      }

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
