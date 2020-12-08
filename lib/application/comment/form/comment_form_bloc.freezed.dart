// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<CommentDomain> initialComment) {
    return _Initialized(
      initialComment,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  _AvatarUrlChanged avatarUrlChanged(String url) {
    return _AvatarUrlChanged(
      url,
    );
  }

// ignore: unused_element
  _UserIdChanged userIdChanged(String userId) {
    return _UserIdChanged(
      userId,
    );
  }

// ignore: unused_element
  _Submit submit(PostDomain post) {
    return _Submit(
      post,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentFormEvent = _$CommentFormEventTearOff();

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(
          CommentFormEvent value, $Res Function(CommentFormEvent) then) =
      _$CommentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentFormEventCopyWithImpl<$Res>
    implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);

  final CommentFormEvent _value;
  // ignore: unused_field
  final $Res Function(CommentFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<CommentDomain> initialComment});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialComment = freezed,
  }) {
    return _then(_Initialized(
      initialComment == freezed
          ? _value.initialComment
          : initialComment as Option<CommentDomain>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialComment) : assert(initialComment != null);

  @override
  final Option<CommentDomain> initialComment;

  @override
  String toString() {
    return 'CommentFormEvent.initialized(initialComment: $initialComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialComment, initialComment) ||
                const DeepCollectionEquality()
                    .equals(other.initialComment, initialComment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialComment);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return initialized(initialComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
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

abstract class _Initialized implements CommentFormEvent {
  const factory _Initialized(Option<CommentDomain> initialComment) =
      _$_Initialized;

  Option<CommentDomain> get initialComment;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
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
    return 'CommentFormEvent.bodyChanged(bodyStr: $bodyStr)';
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
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
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
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
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

abstract class _BodyChanged implements CommentFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'CommentFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements CommentFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$AvatarUrlChangedCopyWith<$Res> {
  factory _$AvatarUrlChangedCopyWith(
          _AvatarUrlChanged value, $Res Function(_AvatarUrlChanged) then) =
      __$AvatarUrlChangedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$AvatarUrlChangedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$AvatarUrlChangedCopyWith<$Res> {
  __$AvatarUrlChangedCopyWithImpl(
      _AvatarUrlChanged _value, $Res Function(_AvatarUrlChanged) _then)
      : super(_value, (v) => _then(v as _AvatarUrlChanged));

  @override
  _AvatarUrlChanged get _value => super._value as _AvatarUrlChanged;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_AvatarUrlChanged(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$_AvatarUrlChanged implements _AvatarUrlChanged {
  const _$_AvatarUrlChanged(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'CommentFormEvent.avatarUrlChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarUrlChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$AvatarUrlChangedCopyWith<_AvatarUrlChanged> get copyWith =>
      __$AvatarUrlChangedCopyWithImpl<_AvatarUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return avatarUrlChanged(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (avatarUrlChanged != null) {
      return avatarUrlChanged(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return avatarUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (avatarUrlChanged != null) {
      return avatarUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarUrlChanged implements CommentFormEvent {
  const factory _AvatarUrlChanged(String url) = _$_AvatarUrlChanged;

  String get url;
  _$AvatarUrlChangedCopyWith<_AvatarUrlChanged> get copyWith;
}

/// @nodoc
abstract class _$UserIdChangedCopyWith<$Res> {
  factory _$UserIdChangedCopyWith(
          _UserIdChanged value, $Res Function(_UserIdChanged) then) =
      __$UserIdChangedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$UserIdChangedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$UserIdChangedCopyWith<$Res> {
  __$UserIdChangedCopyWithImpl(
      _UserIdChanged _value, $Res Function(_UserIdChanged) _then)
      : super(_value, (v) => _then(v as _UserIdChanged));

  @override
  _UserIdChanged get _value => super._value as _UserIdChanged;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_UserIdChanged(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_UserIdChanged implements _UserIdChanged {
  const _$_UserIdChanged(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'CommentFormEvent.userIdChanged(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserIdChanged &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  _$UserIdChangedCopyWith<_UserIdChanged> get copyWith =>
      __$UserIdChangedCopyWithImpl<_UserIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return userIdChanged(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userIdChanged != null) {
      return userIdChanged(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return userIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
    TResult submit(_Submit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userIdChanged != null) {
      return userIdChanged(this);
    }
    return orElse();
  }
}

abstract class _UserIdChanged implements CommentFormEvent {
  const factory _UserIdChanged(String userId) = _$_UserIdChanged;

  String get userId;
  _$UserIdChangedCopyWith<_UserIdChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({PostDomain post});

  $PostDomainCopyWith<$Res> get post;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_Submit(
      post == freezed ? _value.post : post as PostDomain,
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
class _$_Submit implements _Submit {
  const _$_Submit(this.post) : assert(post != null);

  @override
  final PostDomain post;

  @override
  String toString() {
    return 'CommentFormEvent.submit(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submit &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<CommentDomain> initialComment),
    @required TResult bodyChanged(String bodyStr),
    @required TResult usernameChanged(String usernameStr),
    @required TResult avatarUrlChanged(String url),
    @required TResult userIdChanged(String userId),
    @required TResult submit(PostDomain post),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return submit(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<CommentDomain> initialComment),
    TResult bodyChanged(String bodyStr),
    TResult usernameChanged(String usernameStr),
    TResult avatarUrlChanged(String url),
    TResult userIdChanged(String userId),
    TResult submit(PostDomain post),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult avatarUrlChanged(_AvatarUrlChanged value),
    @required TResult userIdChanged(_UserIdChanged value),
    @required TResult submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(usernameChanged != null);
    assert(avatarUrlChanged != null);
    assert(userIdChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bodyChanged(_BodyChanged value),
    TResult usernameChanged(_UsernameChanged value),
    TResult avatarUrlChanged(_AvatarUrlChanged value),
    TResult userIdChanged(_UserIdChanged value),
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

abstract class _Submit implements CommentFormEvent {
  const factory _Submit(PostDomain post) = _$_Submit;

  PostDomain get post;
  _$SubmitCopyWith<_Submit> get copyWith;
}

/// @nodoc
class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

// ignore: unused_element
  _CommentFormState call(
      {@required CommentDomain comment,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required Option<Either<CommentFailure, Unit>> failureOrSuccessOption}) {
    return _CommentFormState(
      comment: comment,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentFormState = _$CommentFormStateTearOff();

/// @nodoc
mixin _$CommentFormState {
  CommentDomain get comment;
  bool get isSubmitting;
  bool get showErrorMessages;
  bool get isEditing;
  Option<Either<CommentFailure, Unit>> get failureOrSuccessOption;

  $CommentFormStateCopyWith<CommentFormState> get copyWith;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(
          CommentFormState value, $Res Function(CommentFormState) then) =
      _$CommentFormStateCopyWithImpl<$Res>;
  $Res call(
      {CommentDomain comment,
      bool isSubmitting,
      bool showErrorMessages,
      bool isEditing,
      Option<Either<CommentFailure, Unit>> failureOrSuccessOption});

  $CommentDomainCopyWith<$Res> get comment;
}

/// @nodoc
class _$CommentFormStateCopyWithImpl<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);

  final CommentFormState _value;
  // ignore: unused_field
  final $Res Function(CommentFormState) _then;

  @override
  $Res call({
    Object comment = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as CommentDomain,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<CommentFailure, Unit>>,
    ));
  }

  @override
  $CommentDomainCopyWith<$Res> get comment {
    if (_value.comment == null) {
      return null;
    }
    return $CommentDomainCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$CommentFormStateCopyWith<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(
          _CommentFormState value, $Res Function(_CommentFormState) then) =
      __$CommentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CommentDomain comment,
      bool isSubmitting,
      bool showErrorMessages,
      bool isEditing,
      Option<Either<CommentFailure, Unit>> failureOrSuccessOption});

  @override
  $CommentDomainCopyWith<$Res> get comment;
}

/// @nodoc
class __$CommentFormStateCopyWithImpl<$Res>
    extends _$CommentFormStateCopyWithImpl<$Res>
    implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(
      _CommentFormState _value, $Res Function(_CommentFormState) _then)
      : super(_value, (v) => _then(v as _CommentFormState));

  @override
  _CommentFormState get _value => super._value as _CommentFormState;

  @override
  $Res call({
    Object comment = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_CommentFormState(
      comment: comment == freezed ? _value.comment : comment as CommentDomain,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<CommentFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState(
      {@required this.comment,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.failureOrSuccessOption})
      : assert(comment != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(failureOrSuccessOption != null);

  @override
  final CommentDomain comment;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final Option<Either<CommentFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'CommentFormState(comment: $comment, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, isEditing: $isEditing, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentFormState &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
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
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      __$CommentFormStateCopyWithImpl<_CommentFormState>(this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState(
          {@required
              CommentDomain comment,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              Option<Either<CommentFailure, Unit>> failureOrSuccessOption}) =
      _$_CommentFormState;

  @override
  CommentDomain get comment;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  Option<Either<CommentFailure, Unit>> get failureOrSuccessOption;
  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith;
}
