// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    body: json['body'] as String,
    photoUrl: json['photoUrl'] as String,
    username: json['username'] as String,
    userId: json['userId'] as String,
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['server_timestamp']),
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'userId': instance.userId,
      'server_timestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
