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

  Future<DocumentReference> commentDocument(String postId) async {
    return FirebaseFirestore.instance.collection('comments').doc(postId);
  }

  Future<QuerySnapshot> findUserDocument(String query) async {
    return FirebaseFirestore.instance
        .collection('users')
        .where('name', isGreaterThanOrEqualTo: query)
        .get();
  }

  Future<QuerySnapshot> getMyPosts(String userId) async {
    final postRef = await FirebaseFirestore.instance.postDocument(userId);
    return postRef.userPostCollection
        .orderBy('server_timestamp', descending: true)
        .get();
  }

  Future<DocumentReference> findUserDocumentById(String userId) async {
    return FirebaseFirestore.instance.collection('users').doc(userId);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
  CollectionReference get postCollection => collection('posts');
  CollectionReference get userPostCollection => collection('myPosts');
  CollectionReference get commentPostCollection => collection('comments');
}
