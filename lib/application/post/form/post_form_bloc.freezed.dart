// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostFormEventTearOff {
  const _$PostFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<PostDomain> initialPost) {
    return _Initialized(
      initialPost,
    );
  }

// ignore: unused_element
  _FileImageChanged fileImageChanged(Option<File> imageFile) {
    return _FileImageChanged(
      imageFile,
    );
  }

// ignore: unused_element
  _ImageChanged imageChanged(String imagePath) {
    return _ImageChanged(
      imagePath,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _LocationChanged locationChanged(String locationStr) {
    return _LocationChanged(
      locationStr,
    );
  }

// ignore: unused_element
  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormEvent = _$PostFormEventTearOff();

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormEventCopyWithImpl<$Res>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  final PostFormEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<PostDomain> initialPost});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialPost = freezed,
  }) {
    return _then(_Initialized(
      initialPost == freezed
          ? _value.initialPost
          : initialPost as Option<PostDomain>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPost) : assert(initialPost != null);

  @override
  final Option<PostDomain> initialPost;

  @override
  String toString() {
    return 'PostFormEvent.initialized(initialPost: $initialPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialPost, initialPost) ||
                const DeepCollectionEquality()
                    .equals(other.initialPost, initialPost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialPost);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return initialized(initialPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PostFormEvent {
  const factory _Initialized(Option<PostDomain> initialPost) = _$_Initialized;

  Option<PostDomain> get initialPost;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$FileImageChangedCopyWith<$Res> {
  factory _$FileImageChangedCopyWith(
          _FileImageChanged value, $Res Function(_FileImageChanged) then) =
      __$FileImageChangedCopyWithImpl<$Res>;
  $Res call({Option<File> imageFile});
}

/// @nodoc
class __$FileImageChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$FileImageChangedCopyWith<$Res> {
  __$FileImageChangedCopyWithImpl(
      _FileImageChanged _value, $Res Function(_FileImageChanged) _then)
      : super(_value, (v) => _then(v as _FileImageChanged));

  @override
  _FileImageChanged get _value => super._value as _FileImageChanged;

  @override
  $Res call({
    Object imageFile = freezed,
  }) {
    return _then(_FileImageChanged(
      imageFile == freezed ? _value.imageFile : imageFile as Option<File>,
    ));
  }
}

/// @nodoc
class _$_FileImageChanged implements _FileImageChanged {
  const _$_FileImageChanged(this.imageFile) : assert(imageFile != null);

  @override
  final Option<File> imageFile;

  @override
  String toString() {
    return 'PostFormEvent.fileImageChanged(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileImageChanged &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFile);

  @override
  _$FileImageChangedCopyWith<_FileImageChanged> get copyWith =>
      __$FileImageChangedCopyWithImpl<_FileImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return fileImageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileImageChanged != null) {
      return fileImageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return fileImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileImageChanged != null) {
      return fileImageChanged(this);
    }
    return orElse();
  }
}

abstract class _FileImageChanged implements PostFormEvent {
  const factory _FileImageChanged(Option<File> imageFile) = _$_FileImageChanged;

  Option<File> get imageFile;
  _$FileImageChangedCopyWith<_FileImageChanged> get copyWith;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object imagePath = freezed,
  }) {
    return _then(_ImageChanged(
      imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imagePath) : assert(imagePath != null);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'PostFormEvent.imageChanged(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return imageChanged(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements PostFormEvent {
  const factory _ImageChanged(String imagePath) = _$_ImageChanged;

  String get imagePath;
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

/// @nodoc
class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'PostFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements PostFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  $Res call({String locationStr});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object locationStr = freezed,
  }) {
    return _then(_LocationChanged(
      locationStr == freezed ? _value.locationStr : locationStr as String,
    ));
  }
}

/// @nodoc
class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.locationStr) : assert(locationStr != null);

  @override
  final String locationStr;

  @override
  String toString() {
    return 'PostFormEvent.locationChanged(locationStr: $locationStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChanged &&
            (identical(other.locationStr, locationStr) ||
                const DeepCollectionEquality()
                    .equals(other.locationStr, locationStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationStr);

  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return locationChanged(locationStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(locationStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements PostFormEvent {
  const factory _LocationChanged(String locationStr) = _$_LocationChanged;

  String get locationStr;
  _$LocationChangedCopyWith<_LocationChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc
class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'PostFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<PostDomain> initialPost),
    @required TResult fileImageChanged(Option<File> imageFile),
    @required TResult imageChanged(String imagePath),
    @required TResult bodyChanged(String bodyStr),
    @required TResult locationChanged(String locationStr),
    @required TResult submit(),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<PostDomain> initialPost),
    TResult fileImageChanged(Option<File> imageFile),
    TResult imageChanged(String imagePath),
    TResult bodyChanged(String bodyStr),
    TResult locationChanged(String locationStr),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult fileImageChanged(_FileImageChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult locationChanged(_LocationChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(fileImageChanged != null);
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(locationChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult fileImageChanged(_FileImageChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult locationChanged(_LocationChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements PostFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$PostFormStateTearOff {
  const _$PostFormStateTearOff();

// ignore: unused_element
  _PostFormState call(
      {@required PostDomain post,
      @required File imageFile,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required Option<Either<PostFailure, Unit>> failureOrSuccessOption}) {
    return _PostFormState(
      post: post,
      imageFile: imageFile,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormState = _$PostFormStateTearOff();

/// @nodoc
mixin _$PostFormState {
  PostDomain get post;
  File get imageFile;
  bool get isSubmitting;
  bool get showErrorMessages;
  bool get isEditing;
  Option<Either<PostFailure, Unit>> get failureOrSuccessOption;

  $PostFormStateCopyWith<PostFormState> get copyWith;
}

/// @nodoc
abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res>;
  $Res call(
      {PostDomain post,
      File imageFile,
      bool isSubmitting,
      bool showErrorMessages,
      bool isEditing,
      Option<Either<PostFailure, Unit>> failureOrSuccessOption});

  $PostDomainCopyWith<$Res> get post;
}

/// @nodoc
class _$PostFormStateCopyWithImpl<$Res>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  final PostFormState _value;
  // ignore: unused_field
  final $Res Function(PostFormState) _then;

  @override
  $Res call({
    Object post = freezed,
    Object imageFile = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as PostDomain,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<PostFailure, Unit>>,
    ));
  }

  @override
  $PostDomainCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostDomainCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$PostFormStateCopyWith(
          _PostFormState value, $Res Function(_PostFormState) then) =
      __$PostFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostDomain post,
      File imageFile,
      bool isSubmitting,
      bool showErrorMessages,
      bool isEditing,
      Option<Either<PostFailure, Unit>> failureOrSuccessOption});

  @override
  $PostDomainCopyWith<$Res> get post;
}

/// @nodoc
class __$PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res>
    implements _$PostFormStateCopyWith<$Res> {
  __$PostFormStateCopyWithImpl(
      _PostFormState _value, $Res Function(_PostFormState) _then)
      : super(_value, (v) => _then(v as _PostFormState));

  @override
  _PostFormState get _value => super._value as _PostFormState;

  @override
  $Res call({
    Object post = freezed,
    Object imageFile = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_PostFormState(
      post: post == freezed ? _value.post : post as PostDomain,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<PostFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PostFormState implements _PostFormState {
  const _$_PostFormState(
      {@required this.post,
      @required this.imageFile,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.failureOrSuccessOption})
      : assert(post != null),
        assert(imageFile != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(failureOrSuccessOption != null);

  @override
  final PostDomain post;
  @override
  final File imageFile;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final Option<Either<PostFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'PostFormState(post: $post, imageFile: $imageFile, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, isEditing: $isEditing, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostFormState &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$PostFormStateCopyWith<_PostFormState> get copyWith =>
      __$PostFormStateCopyWithImpl<_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
          {@required PostDomain post,
          @required File imageFile,
          @required bool isSubmitting,
          @required bool showErrorMessages,
          @required bool isEditing,
          @required Option<Either<PostFailure, Unit>> failureOrSuccessOption}) =
      _$_PostFormState;

  @override
  PostDomain get post;
  @override
  File get imageFile;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  Option<Either<PostFailure, Unit>> get failureOrSuccessOption;
  @override
  _$PostFormStateCopyWith<_PostFormState> get copyWith;
}
