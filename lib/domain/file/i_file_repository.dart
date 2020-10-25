import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/core/app_enums.dart';

import 'file_failure.dart';

abstract class IFileRepository {
  Future<Either<FileFailure, File>> getFileImage(SourceImage source);
}
