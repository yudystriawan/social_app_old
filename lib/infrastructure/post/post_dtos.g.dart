// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$_$_PostDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDto(
    imageUrl: json['image_url'] as String,
    body: json['body'] as String,
    location: json['location'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'body': instance.body,
      'location': instance.location,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
