import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/infrastructure/core/storage_helpers.dart';
import 'package:my_social_app/domain/core/app_enums.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/file/file_failure.dart';
import 'package:my_social_app/domain/file/i_file_repository.dart';
import 'package:my_social_app/infrastructure/core/utils.dart';

@Injectable(as: IFileRepository)
class FileRepositoy implements IFileRepository {
  final ImagePicker _imagePicker;
  final FirebaseStorage _storage;

  FileRepositoy(
    this._imagePicker,
    this._storage,
  );

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

  @override
  Future<Either<FileFailure, StringSingleLine>> uploadPostFileImage({
    @required File imageFile,
    @required UniqueId postId,
  }) async {
    try {
      final compressedFile = await Utils.compressFileImage(imageFile);
      final postRef = _storage
          .postImageReference(postId.getOrCrash())
          .putFile(compressedFile);
      final storageTaskSnap = await postRef;
      final downloadUrl = await storageTaskSnap.ref.getDownloadURL();
      log('DOWNLOAD_URL $downloadUrl');
      return right(StringSingleLine(downloadUrl));
    } on PlatformException catch (e) {
      log('uploadFileImageError ${e.message}');
      return left(const FileFailure.unexpected());
    }
  }
}
