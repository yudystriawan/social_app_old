import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/app_enums.dart';
import 'package:my_social_app/domain/file/file_failure.dart';
import 'package:my_social_app/domain/file/i_file_repository.dart';

@Injectable(as: IFileRepository)
class FileRepositoy implements IFileRepository {
  final ImagePicker _imagePicker;

  FileRepositoy(this._imagePicker);

  @override
  Future<Either<FileFailure, File>> getFileImage(SourceImage source) async {
    final _source =
        source == SourceImage.camera ? ImageSource.camera : ImageSource.gallery;

    try {
      final pickedFile = await _imagePicker.getImage(
        source: _source,
        maxWidth: 675,
        maxHeight: 960,
      );

      if (pickedFile == null) {
        return left(const FileFailure.cancelled());
      }

      return right(File(pickedFile.path));
    } on PlatformException catch (e) {
      log('ERROR ${e.message}');
      if (e.message == 'The user did not allow photo access.') {
        return left(const FileFailure.storageAccessDenied());
      }
      return left(const FileFailure.unexpected());
    }
  }
}
