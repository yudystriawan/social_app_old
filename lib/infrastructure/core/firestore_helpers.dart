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

  Future<DocumentReference> feedDocument(String ownerId) async {
    return FirebaseFirestore.instance.collection('feed').doc(ownerId);
  }

  Future<DocumentReference> followerDocument(String userId) async {
    return FirebaseFirestore.instance.collection('followers').doc(userId);
  }

  Future<DocumentReference> followingDocument(String userId) async {
    return FirebaseFirestore.instance.collection('following').doc(userId);
  }

  Future<DocumentReference> findUserDocumentById(String userId) async {
    return FirebaseFirestore.instance.collection('users').doc(userId);
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

  Stream<QuerySnapshot> getFollowerCount(String userId) async* {
    final followersRef =
        await FirebaseFirestore.instance.followerDocument(userId);
    yield* followersRef.userFollowerCollection.snapshots();
  }

  Stream<QuerySnapshot> getFollowingCount(String userId) async* {
    final followingRef =
        await FirebaseFirestore.instance.followingDocument(userId);
    yield* followingRef.userFollowingCollection.snapshots();
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
  CollectionReference get postCollection => collection('posts');
  CollectionReference get userPostCollection => collection('myPosts');
  CollectionReference get commentPostCollection => collection('comments');
  CollectionReference get feedCollection => collection('feedItems');
  CollectionReference get userFollowerCollection => collection('userFollowers');
  CollectionReference get userFollowingCollection =>
      collection('userFollowing');
}
