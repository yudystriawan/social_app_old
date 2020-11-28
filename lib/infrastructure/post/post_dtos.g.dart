// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$_$_PostDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDto(
    userId: json['user_id'] as String,
    imageUrl: json['image_url'] as String,
    body: json['body'] as String,
    location: json['location'] as String,
    likes: (json['likes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['server_timestamp']),
  );
}

Map<String, dynamic> _$_$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'image_url': instance.imageUrl,
      'body': instance.body,
      'location': instance.location,
      'likes': instance.likes,
      'server_timestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
