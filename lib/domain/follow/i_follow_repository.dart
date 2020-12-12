import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';

abstract class IFollowRepository {
  Future<Either<FollowFailure, bool>> toggleFollow({
    @required StringSingleLine userId,
    @required bool isFollowing,
  });
  Future<Either<FollowFailure, List<StringSingleLine>>> fetchFollowingUserIds(
      StringSingleLine userId);
  Stream<Either<FollowFailure, bool>> checkFollowUser(StringSingleLine userId);
  Stream<Either<FollowFailure, int>> fetchFollowerCount(
    StringSingleLine userId,
  );
  Stream<Either<FollowFailure, int>> fetchFollowingCount(
    StringSingleLine userId,
  );
}
