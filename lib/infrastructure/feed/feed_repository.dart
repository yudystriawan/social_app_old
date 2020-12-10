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
import 'package:rxdart/rxdart.dart';

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

      final isFollow = feed.type.getOrCrash() == 'follow';

      await feedDoc.feedCollection
          .doc(isFollow ? feed.userId.getOrCrash() : feed.postId.getOrCrash())
          .set(feedDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      log('error', name: 'create', error: e);
      return left(const FeedFailure.unexpected());
    }
  }

  @override
  Future<Either<FeedFailure, Unit>> delete({
    StringSingleLine ownerUserId,
    StringSingleLine currentUserOrPostId,
  }) async {
    try {
      final feedDoc = await _firestore.feedDocument(ownerUserId.getOrCrash());

      feedDoc.feedCollection
          .doc(currentUserOrPostId.getOrCrash())
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });

      return right(unit);
    } on PlatformException catch (e) {
      log('error', name: 'create', error: e);
      return left(const FeedFailure.unexpected());
    }
  }

  @override
  Stream<Either<FeedFailure, List<FeedDomain>>> fetchFeeds(
      StringSingleLine userId) async* {
    final feedRef = await _firestore.feedDocument(userId.getOrCrash());
    yield* feedRef.feedCollection
        .orderBy('server_timestamp', descending: true)
        .limit(50)
        .snapshots()
        .map(
          (snapshot) => right<FeedFailure, List<FeedDomain>>(
            snapshot.docs
                .map((doc) => FeedDto.fromFirestore(doc).toDomain(doc))
                .toList(),
          ),
        )
        .onErrorReturnWith((error) {
      log('error', name: 'getMyPost()', error: error);
      return left(const FeedFailure.unexpected());
    });
  }
}
