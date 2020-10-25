import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_social_app/domain/core/app_enums.dart';
import 'package:my_social_app/domain/core/value_objects.dart';

import 'file_failure.dart';

abstract class IFileRepository {
  Future<Either<FileFailure, File>> getFileImage(SourceImage source);
  Future<Either<FileFailure, StringSingleLine>> uploadPostFileImage({
    @required File imageFile,
    @required UniqueId postId,
  });
}
