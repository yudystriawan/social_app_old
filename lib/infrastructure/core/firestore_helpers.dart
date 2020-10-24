import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final user = FirebaseAuth.instance.currentUser;
    // final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user.uid);
  }
}
