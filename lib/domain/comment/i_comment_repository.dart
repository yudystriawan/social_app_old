import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/comment_failure.dart';

abstract class ICommentRepository {
  Future<Either<CommentFailure, Unit>> create(CommentDomain comment);
}
