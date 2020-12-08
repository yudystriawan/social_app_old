import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/domain/comment/value_objects.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/user/value_objects.dart';
import 'package:my_social_app/infrastructure/core/timestamp.dart';

part 'comment_dtos.freezed.dart';
part 'comment_dtos.g.dart';

@freezed
abstract class CommentDto with _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required String avatarUrl,
    @required String username,
    @required String userId,
    @JsonKey(name: 'comment_body') String commentBody,
    @JsonKey(name: 'server_timestamp')
    @required
    @ServerTimestampConverter()
        FieldValue serverTimestamp,
  }) = _CommentDto;

  CommentDomain toDomain(DocumentSnapshot doc) {
    return CommentDomain(
      id: UniqueId.fromUniqueString(id),
      body: CommentBody(body),
      username: StringSingleLine(username),
      avatarUrl: PhotoUrl(avatarUrl),
      userId: StringSingleLine(userId),
      timestamp: doc['server_timestamp'] as Timestamp,
    );
  }

  factory CommentDto.fromDomain(CommentDomain comment) {
    return CommentDto(
      body: comment.body.getOrCrash(),
      avatarUrl: comment.avatarUrl.getOrCrash(),
      username: comment.username.getOrCrash(),
      userId: comment.userId.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);

  factory CommentDto.fromFirestore(DocumentSnapshot doc) {
    return CommentDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
