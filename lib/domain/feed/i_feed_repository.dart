import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/feed/feed_failure.dart';

abstract class IFeedRepository {
  Future<Either<FeedFailure, Unit>> create({
    @required StringSingleLine ownerUserId,
    @required FeedDomain feed,
  });
  Future<Either<FeedFailure, Unit>> delete({
    @required StringSingleLine ownerUserId,
    @required StringSingleLine currentUserOrPostId,
  });
  Stream<Either<FeedFailure, List<FeedDomain>>> fetchFeeds(
    StringSingleLine userId,
  );
}
