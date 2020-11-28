import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final user = FirebaseAuth.instance.currentUser;
    return FirebaseFirestore.instance.collection('users').doc(user?.uid);
  }

  Future<DocumentReference> postDocument(String userId) async {
    return FirebaseFirestore.instance.collection('posts').doc(userId);
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
  CollectionReference get userPostCollection => collection('myPosts');
}
