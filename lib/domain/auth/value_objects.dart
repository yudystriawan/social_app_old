import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(
      validateStringNotEmpty(input),
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
      validateStringNotEmpty(input),
    );
  }

  const Username._(this.value);
}

class Bio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Bio(String input) {
    assert(input != null);
    return Bio._(
      validateStringNotEmpty(input),
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
      validateStringNotEmpty(input),
    );
  }

  const PhotoUrl._(this.value);
}
