import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_failure.freezed.dart';

@freezed
abstract class FileFailure with _$FileFailure {
  const factory FileFailure.cameraAccessDenied() = _CameraAccessDenied;
  const factory FileFailure.storageAccessDenied() = _StorageAccessDenied;
  const factory FileFailure.cancelled() = _Cancelled;
  const factory FileFailure.unexpected() = _Unexpected;
}
