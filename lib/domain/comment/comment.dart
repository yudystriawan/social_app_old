import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_social_app/domain/comment/value_objects.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/user/value_objects.dart';

part 'comment.freezed.dart';

@freezed
abstract class CommentDomain with _$CommentDomain {
  const CommentDomain._();

  const factory CommentDomain({
    @required UniqueId id,
    @required CommentBody body,
    @required StringSingleLine username,
    @required PhotoUrl photoUrl,
    @required StringSingleLine userId,
    Timestamp timestamp,
  }) = _CommentDomain;

  factory CommentDomain.empty() => CommentDomain(
        id: UniqueId(),
        body: CommentBody(''),
        username: StringSingleLine(''),
        photoUrl: PhotoUrl(''),
        userId: StringSingleLine(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(username.failureOrUnit)
        .andThen(photoUrl.failureOrUnit)
        .andThen(userId.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
