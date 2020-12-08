import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/domain/user/value_objects.dart';
import 'package:my_social_app/infrastructure/core/timestamp.dart';

part 'feed_dtos.freezed.dart';
part 'feed_dtos.g.dart';

@freezed
abstract class FeedDto with _$FeedDto {
  const FeedDto._();

  const factory FeedDto({
    @JsonKey(ignore: true) String id,
    @required String type,
    @required String username,
    @required String userId,
    @required String postId,
    @required String userAvatarUrl,
    @required String thumbnailUrl,
    @JsonKey(name: 'server_timestamp')
    @required
    @ServerTimestampConverter()
        FieldValue serverTimestamp,
  }) = _FeedDto;

  factory FeedDto.fromJson(Map<String, dynamic> json) =>
      _$FeedDtoFromJson(json);

  factory FeedDto.fromDomain(FeedDomain feed) {
    return FeedDto(
      type: feed.type.getOrCrash(),
      username: feed.username.getOrCrash(),
      userId: feed.userId.getOrCrash(),
      postId: feed.postId.getOrCrash(),
      userAvatarUrl: feed.userAvatarUrl.getOrCrash(),
      thumbnailUrl: feed.thumbnailUrl.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  factory FeedDto.fromFirestore(DocumentSnapshot doc) {
    return FeedDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  FeedDomain toDomain(DocumentSnapshot doc) {
    return FeedDomain(
      id: UniqueId.fromUniqueString(id),
      type: StringSingleLine(type),
      username: StringSingleLine(username),
      userId: StringSingleLine(userId),
      postId: StringSingleLine(postId),
      userAvatarUrl: PhotoUrl(userAvatarUrl),
      thumbnailUrl: PhotoUrl(thumbnailUrl),
      timestamp: doc['server_timestamp'] as Timestamp,
    );
  }
}
