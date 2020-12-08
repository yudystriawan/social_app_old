import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/user/value_objects.dart';

part 'feed.freezed.dart';

@freezed
abstract class FeedDomain with _$FeedDomain {
  const FeedDomain._();

  const factory FeedDomain({
    @required UniqueId id,
    @required StringSingleLine type,
    @required StringSingleLine username,
    @required StringSingleLine userId,
    @required StringSingleLine postId,
    @required PhotoUrl userAvatarUrl,
    @required PhotoUrl thumbnailUrl,
    Timestamp timestamp,
  }) = _FeedDomain;

  factory FeedDomain.empty() => FeedDomain(
        id: UniqueId(),
        type: StringSingleLine(''),
        username: StringSingleLine(''),
        userId: StringSingleLine(''),
        postId: StringSingleLine(''),
        userAvatarUrl: PhotoUrl(''),
        thumbnailUrl: PhotoUrl(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return type.failureOrUnit
        .andThen(username.failureOrUnit)
        .andThen(userId.failureOrUnit)
        .andThen(postId.failureOrUnit)
        .andThen(userAvatarUrl.failureOrUnit)
        .andThen(thumbnailUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
