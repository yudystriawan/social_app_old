import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/infrastructure/core/timestamp.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDto with _$PostDto {
  const factory PostDto({
    @JsonKey(ignore: true) String id,
    @JsonKey(name: 'user_id') @required String userId,
    @JsonKey(name: 'image_url') @required String imageUrl,
    @required String body,
    @required String location,
    Map<String, bool> likes,
    @JsonKey(name: 'server_timestamp')
    @required
    @ServerTimestampConverter()
        FieldValue serverTimestamp,
  }) = _PostDto;

  factory PostDto.fromDomain(PostDomain post) {
    return PostDto(
      id: post.id.getOrCrash(),
      userId: post.userId.getOrCrash(),
      imageUrl: post.imageUrl.getOrCrash(),
      body: post.body.getOrCrash(),
      location: post.location.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  factory PostDto.fromFirestore(DocumentSnapshot doc) {
    return PostDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
