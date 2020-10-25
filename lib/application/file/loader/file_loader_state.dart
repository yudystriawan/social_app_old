part of 'file_loader_bloc.dart';

@freezed
abstract class FileLoaderState with _$FileLoaderState {
  const factory FileLoaderState.initial() = _Initial;
  const factory FileLoaderState.loadInProgress() = _LoadInProgress;
  const factory FileLoaderState.loadFailure(FileFailure failure) = _LoadFailure;
  const factory FileLoaderState.loadSuccess(File file) = _LoadSuccess;
}
