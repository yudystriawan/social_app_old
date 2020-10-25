import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';
import 'package:my_social_app/infrastructure/post/post_dtos.dart';

@Injectable(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firestore;

  PostRepository(this._firestore);

  @override
  Future<Either<PostFailure, Unit>> create(PostDomain post) async {
    try {
      final userDoc = await _firestore.userDocument();
      final postDto = PostDto.fromDomain(post);

      await userDoc.postCollection.doc(postDto.id).set(postDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      log('createError ${e.message}');
      return left(const PostFailure.unexpected());
    }
  }
}
