import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/core/value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const Name._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const Username._(this.value);
}

class Bio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory Bio(String input) {
    assert(input != null);
    return Bio._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const Bio._(this.value);
}

class PhotoUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhotoUrl(String input) {
    assert(input != null);
    return PhotoUrl._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const PhotoUrl._(this.value);
}
