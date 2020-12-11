import 'package:firebase_storage/firebase_storage.dart';
import 'package:my_social_app/injection.dart';

extension FirebaseStorageX on FirebaseStorage {
  Reference postImageReference(String postId) {
    final storage = getIt<FirebaseStorage>();
    return storage.ref().child('post_$postId.jpg');
  }
}
