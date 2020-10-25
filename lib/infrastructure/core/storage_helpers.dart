import 'package:firebase_storage/firebase_storage.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/injection.dart';

extension FirebaseStorageX on FirebaseStorage {
  StorageReference postImageReference(UniqueId postId) {
    final storage = getIt<FirebaseStorage>();
    return storage.ref().child('post_${postId.getOrCrash()}.jpg');
  }
}
