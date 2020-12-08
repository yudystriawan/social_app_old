import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/feed/feed_failure.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/i_feed_repository.dart';
import 'package:my_social_app/infrastructure/feed/feed_dtos.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';

@Injectable(as: IFeedRepository)
class FeedRepository implements IFeedRepository {
  final FirebaseFirestore _firestore;

  FeedRepository(this._firestore);

  @override
  Future<Either<FeedFailure, Unit>> create({
    StringSingleLine ownerUserId,
    FeedDomain feed,
  }) async {
    try {
      final feedDto = FeedDto.fromDomain(feed);
      final feedDoc = await _firestore.feedDocument(ownerUserId.getOrCrash());

      await feedDoc.feedCollection
          .doc(feed.postId.getOrCrash())
          .set(feedDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      log('error', name: 'create', error: e);
      return left(const FeedFailure.unexpected());
    }
  }
}
