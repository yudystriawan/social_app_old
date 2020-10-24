import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_social_app/domain/auth/i_auth_repository.dart';
import 'package:my_social_app/domain/core/errors.dart';
import 'package:my_social_app/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthRepository>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}
