import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument(String userId) async {
    return FirebaseFirestore.instance.collection('users').doc(userId);
  }
}
