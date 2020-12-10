// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedDto _$_$_FeedDtoFromJson(Map<String, dynamic> json) {
  return _$_FeedDto(
    type: json['type'] as String,
    username: json['username'] as String,
    userId: json['userId'] as String,
    userAvatarUrl: json['userAvatarUrl'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
    postId: json['postId'] as String,
    commentBody: json['comment_body'] as String,
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['server_timestamp']),
  );
}

Map<String, dynamic> _$_$_FeedDtoToJson(_$_FeedDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'username': instance.username,
      'userId': instance.userId,
      'userAvatarUrl': instance.userAvatarUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'postId': instance.postId,
      'comment_body': instance.commentBody,
      'server_timestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
