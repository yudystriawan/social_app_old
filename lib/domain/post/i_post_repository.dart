import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/post_failure.dart';

abstract class IPostRepository {
  Future<Either<PostFailure, Unit>> create(PostDomain post);
  Future<Either<PostFailure, int>> getLikeCount(StringSingleLine postId);
  Future<Either<PostFailure, bool>> toggleLike({
    @required StringSingleLine postId,
    @required StringSingleLine ownerId,
  });
  Stream<Either<PostFailure, List<PostDomain>>> getMyPosts(
    StringSingleLine userId,
  );
}
