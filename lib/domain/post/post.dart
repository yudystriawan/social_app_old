import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/value_objects.dart';

part 'post.freezed.dart';

@freezed
abstract class PostDomain with _$PostDomain {
  const PostDomain._();

  const factory PostDomain({
    @required UniqueId id,
    @required PostImageUrl imageUrl,
    @required PostBody body,
    @required PostLocation location,
  }) = _PostDomain;

  factory PostDomain.empty() => PostDomain(
        id: UniqueId(),
        imageUrl: PostImageUrl(''),
        body: PostBody(''),
        location: PostLocation(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(location.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
