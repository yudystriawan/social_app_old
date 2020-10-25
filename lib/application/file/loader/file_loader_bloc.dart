import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/app_enums.dart';
import 'package:my_social_app/domain/file/file_failure.dart';
import 'package:my_social_app/domain/file/i_file_repository.dart';

part 'file_loader_event.dart';
part 'file_loader_state.dart';
part 'file_loader_bloc.freezed.dart';

@injectable
class FileLoaderBloc extends Bloc<FileLoaderEvent, FileLoaderState> {
  FileLoaderBloc(this._fileRepository) : super(const FileLoaderState.initial());

  final IFileRepository _fileRepository;

  @override
  Stream<FileLoaderState> mapEventToState(
    FileLoaderEvent event,
  ) async* {
    yield const FileLoaderState.loadInProgress();

    final failureOrSuccess =
        await _fileRepository.getFileImage(event.sourceImage);

    yield failureOrSuccess.fold(
      (failure) => FileLoaderState.loadFailure(failure),
      (file) => FileLoaderState.loadSuccess(file),
    );
  }
}
