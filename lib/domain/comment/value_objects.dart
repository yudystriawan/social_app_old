import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/core/failures.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/core/value_validators.dart';

class CommentBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory CommentBody(String input) {
    assert(input != null);
    return CommentBody._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const CommentBody._(this.value);
}
