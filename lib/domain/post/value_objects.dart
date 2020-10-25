import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/core/value_validators.dart';

class PostImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostImageUrl(String input) {
    assert(input != null);
    return PostImageUrl._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const PostImageUrl._(this.value);
}

class PostBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory PostBody(String input) {
    assert(input != null);
    return PostBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const PostBody._(this.value);
}

class PostLocation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostLocation(String input) {
    assert(input != null);
    return PostLocation._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const PostLocation._(this.value);
}
