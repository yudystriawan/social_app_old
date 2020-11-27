// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FileLoaderEventTearOff {
  const _$FileLoaderEventTearOff();

// ignore: unused_element
  _Started getFileImage(SourceImage sourceImage) {
    return _Started(
      sourceImage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FileLoaderEvent = _$FileLoaderEventTearOff();

/// @nodoc
mixin _$FileLoaderEvent {
  SourceImage get sourceImage;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFileImage(SourceImage sourceImage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFileImage(SourceImage sourceImage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFileImage(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFileImage(_Started value),
    @required TResult orElse(),
  });

  $FileLoaderEventCopyWith<FileLoaderEvent> get copyWith;
}

/// @nodoc
abstract class $FileLoaderEventCopyWith<$Res> {
  factory $FileLoaderEventCopyWith(
          FileLoaderEvent value, $Res Function(FileLoaderEvent) then) =
      _$FileLoaderEventCopyWithImpl<$Res>;
  $Res call({SourceImage sourceImage});
}

/// @nodoc
class _$FileLoaderEventCopyWithImpl<$Res>
    implements $FileLoaderEventCopyWith<$Res> {
  _$FileLoaderEventCopyWithImpl(this._value, this._then);

  final FileLoaderEvent _value;
  // ignore: unused_field
  final $Res Function(FileLoaderEvent) _then;

  @override
  $Res call({
    Object sourceImage = freezed,
  }) {
    return _then(_value.copyWith(
      sourceImage: sourceImage == freezed
          ? _value.sourceImage
          : sourceImage as SourceImage,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $FileLoaderEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({SourceImage sourceImage});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$FileLoaderEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object sourceImage = freezed,
  }) {
    return _then(_Started(
      sourceImage == freezed ? _value.sourceImage : sourceImage as SourceImage,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.sourceImage) : assert(sourceImage != null);

  @override
  final SourceImage sourceImage;

  @override
  String toString() {
    return 'FileLoaderEvent.getFileImage(sourceImage: $sourceImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.sourceImage, sourceImage) ||
                const DeepCollectionEquality()
                    .equals(other.sourceImage, sourceImage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sourceImage);

  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFileImage(SourceImage sourceImage),
  }) {
    assert(getFileImage != null);
    return getFileImage(sourceImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFileImage(SourceImage sourceImage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFileImage != null) {
      return getFileImage(sourceImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFileImage(_Started value),
  }) {
    assert(getFileImage != null);
    return getFileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFileImage(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFileImage != null) {
      return getFileImage(this);
    }
    return orElse();
  }
}

abstract class _Started implements FileLoaderEvent {
  const factory _Started(SourceImage sourceImage) = _$_Started;

  @override
  SourceImage get sourceImage;
  @override
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$FileLoaderStateTearOff {
  const _$FileLoaderStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadFailure loadFailure(FileFailure failure) {
    return _LoadFailure(
      failure,
    );
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(File file) {
    return _LoadSuccess(
      file,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FileLoaderState = _$FileLoaderStateTearOff();

/// @nodoc
mixin _$FileLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FileFailure failure),
    @required TResult loadSuccess(File file),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FileFailure failure),
    TResult loadSuccess(File file),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FileLoaderStateCopyWith<$Res> {
  factory $FileLoaderStateCopyWith(
          FileLoaderState value, $Res Function(FileLoaderState) then) =
      _$FileLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileLoaderStateCopyWithImpl<$Res>
    implements $FileLoaderStateCopyWith<$Res> {
  _$FileLoaderStateCopyWithImpl(this._value, this._then);

  final FileLoaderState _value;
  // ignore: unused_field
  final $Res Function(FileLoaderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FileLoaderStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FileLoaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FileFailure failure),
    @required TResult loadSuccess(File file),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FileFailure failure),
    TResult loadSuccess(File file),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FileLoaderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$FileLoaderStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'FileLoaderState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FileFailure failure),
    @required TResult loadSuccess(File file),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FileFailure failure),
    TResult loadSuccess(File file),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements FileLoaderState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FileFailure failure});

  $FileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FileLoaderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as FileFailure,
    ));
  }

  @override
  $FileFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final FileFailure failure;

  @override
  String toString() {
    return 'FileLoaderState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FileFailure failure),
    @required TResult loadSuccess(File file),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FileFailure failure),
    TResult loadSuccess(File file),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements FileLoaderState {
  const factory _LoadFailure(FileFailure failure) = _$_LoadFailure;

  FileFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FileLoaderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(_LoadSuccess(
      file == freezed ? _value.file : file as File,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.file) : assert(file != null);

  @override
  final File file;

  @override
  String toString() {
    return 'FileLoaderState.loadSuccess(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FileFailure failure),
    @required TResult loadSuccess(File file),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FileFailure failure),
    TResult loadSuccess(File file),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements FileLoaderState {
  const factory _LoadSuccess(File file) = _$_LoadSuccess;

  File get file;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}
