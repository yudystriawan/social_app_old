import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/comment_failure.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

abstract class ICommentRepository {
  Future<Either<CommentFailure, Unit>> create({
    @required CommentDomain comment,
    @required StringSingleLine postId,
  });
  Future<Either<CommentFailure, Unit>> deleteByPostId(StringSingleLine postId);
  Stream<Either<CommentFailure, List<CommentDomain>>> getComments(
    StringSingleLine postId,
  );
}
