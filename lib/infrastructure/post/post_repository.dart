import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';
import 'package:my_social_app/infrastructure/post/post_dtos.dart';
import 'package:my_social_app/infrastructure/core/storage_helpers.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  PostRepository(
    this._firestore,
    this._storage,
  );

  @override
  Future<Either<PostFailure, Unit>> create(PostDomain post) async {
    try {
      final postDto = PostDto.fromDomain(post);
      final currentUser = FirebaseAuth.instance.currentUser;
      final postDoc = await _firestore.postDocument(currentUser?.uid);

      await postDoc.userPostCollection.doc(postDto.id).set(postDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      log('createError ${e.message}');
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, int>> getLikeCount(StringSingleLine postId) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      final postDoc = await _firestore.postDocument(currentUser?.uid);
      final post =
          await postDoc.userPostCollection.doc(postId.getOrCrash()).get();

      final postDto = PostDto.fromFirestore(post);

      if (postDto.likes == null) {
        return right(0);
      } else {
        int counter = 0;
        postDto.likes.forEach((key, value) {
          if (value) {
            counter++;
          }
        });
        return right(counter);
      }
    } on PlatformException catch (e) {
      log('error', name: 'getLikeCount()', error: e);
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, List<PostDomain>>> getMyPosts(
    StringSingleLine userId,
  ) async* {
    final postRef = await _firestore.postDocument(userId.getOrCrash());
    yield* postRef.userPostCollection
        .orderBy('server_timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, List<PostDomain>>(
            snapshot.docs
                .map((doc) => PostDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        log('error', name: 'getMyPost', error: e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, bool>> toggleLike({
    StringSingleLine postId,
    StringSingleLine ownerId,
  }) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;

      final postRef = await _firestore.postDocument(ownerId.getOrCrash());
      final postDoc =
          await postRef.userPostCollection.doc(postId.getOrCrash()).get();
      final postDto = PostDto.fromFirestore(postDoc);

      bool isLiked;

      if (postDto.likes == null) {
        isLiked = false;
      } else {
        isLiked = postDto.likes[currentUser?.uid] == true;
      }

      await postRef.userPostCollection
          .doc(postId.getOrCrash())
          .update({'likes.${currentUser?.uid}': !isLiked});

      return right(!isLiked);
    } on PlatformException catch (e) {
      log('error', name: 'toggleLike()', error: e);
      return left(const PostFailure.unexpected());
    } catch (e) {
      log('error', name: 'toggleLike()', error: e);
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, PostDomain>> fetchPost({
    StringSingleLine userId,
    StringSingleLine postId,
  }) async* {
    final postRef = await _firestore.postDocument(userId.getOrCrash());
    yield* postRef.userPostCollection
        .doc(postId.getOrCrash())
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, PostDomain>(
              PostDto.fromFirestore(snapshot).toDomain()),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        log('error', name: 'getMyPost()', error: e);
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, Unit>> delete(PostDomain post) async {
    try {
      final postDto = PostDto.fromDomain(post);
      final postDoc = await _firestore.postDocument(post.userId.getOrCrash());

      // delete post
      await postDoc.userPostCollection.doc(postDto.id).get().then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });

      // delete image post
      await _storage.postImageReference(post.id.getOrCrash()).delete();

      return right(unit);
    } on PlatformException catch (e) {
      log('delete ${e.message}');
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, List<PostDomain>>> fetchTimelinePosts() async* {
    final postRef = await _firestore.timelinePostDocument();

    yield* postRef.timelinePostCollection
        .orderBy('server_timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<PostFailure, List<PostDomain>>(
            snapshot.docs
                .map((doc) => PostDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        log('error', name: 'fetchTimelinePosts', error: e);
        return left(const PostFailure.unexpected());
      }
    });
  }
}
