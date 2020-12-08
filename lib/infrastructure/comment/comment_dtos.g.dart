// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    body: json['body'] as String,
    avatarUrl: json['avatarUrl'] as String,
    username: json['username'] as String,
    userId: json['userId'] as String,
    commentBody: json['comment_body'] as String,
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['server_timestamp']),
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'avatarUrl': instance.avatarUrl,
      'username': instance.username,
      'userId': instance.userId,
      'comment_body': instance.commentBody,
      'server_timestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
