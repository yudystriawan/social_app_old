import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/comment_failure.dart';
import 'package:my_social_app/domain/comment/i_comment_repository.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/infrastructure/comment/comment_dtos.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@Injectable(as: ICommentRepository)
class CommentRepostiory implements ICommentRepository {
  final FirebaseFirestore _firestore;

  CommentRepostiory(this._firestore);

  @override
  Future<Either<CommentFailure, Unit>> create({
    CommentDomain comment,
    StringSingleLine postId,
  }) async {
    try {
      final commentDto = CommentDto.fromDomain(comment);
      final commentDoc = await _firestore.commentDocument(postId.getOrCrash());

      await commentDoc.commentPostCollection
          .doc(commentDto.id)
          .set(commentDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      log('create error', name: 'create()', error: e);
      return left(const CommentFailure.unexpected());
    }
  }

  @override
  Stream<Either<CommentFailure, List<CommentDomain>>> getComments(
      StringSingleLine postId) async* {
    final commentRef = await _firestore.commentDocument(postId.getOrCrash());
    yield* commentRef.commentPostCollection
        .orderBy('server_timestamp')
        .snapshots()
        .map(
          (snapshot) => right<CommentFailure, List<CommentDomain>>(
            snapshot.docs
                .map((doc) => CommentDto.fromFirestore(doc).toDomain(doc))
                .toList(),
          ),
        )
        .onErrorReturnWith((error) {
      log('error', name: 'getMyPost()', error: error);
      return left(const CommentFailure.unexpected());
    });
  }
}
