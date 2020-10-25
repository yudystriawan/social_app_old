import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final user = FirebaseAuth.instance.currentUser;

    // final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user?.uid);
  }

  Future<QuerySnapshot> findUserDocument(String query) async {
    return FirebaseFirestore.instance
        .collection('users')
        .where('name', isGreaterThanOrEqualTo: query)
        .get();
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get postCollection => collection('posts');
}
