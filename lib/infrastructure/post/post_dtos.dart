import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/post/value_objects.dart';
import 'package:my_social_app/infrastructure/core/timestamp.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDto with _$PostDto {
  const PostDto._();

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

  PostDomain toDomain() {
    return PostDomain(
      id: UniqueId.fromUniqueString(id),
      userId: StringSingleLine(userId),
      imageUrl: PostImageUrl(imageUrl),
      body: PostBody(body),
      location: PostLocation(location),
      likes: likes.map((key, value) => MapEntry(StringSingleLine(key), value)),
    );
  }

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
