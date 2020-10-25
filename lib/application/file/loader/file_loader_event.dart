part of 'file_loader_bloc.dart';

@freezed
abstract class FileLoaderEvent with _$FileLoaderEvent {
  const factory FileLoaderEvent.getFileImage(SourceImage sourceImage) =
      _Started;
}
