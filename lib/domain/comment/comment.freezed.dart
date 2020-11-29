// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentDomainTearOff {
  const _$CommentDomainTearOff();

// ignore: unused_element
  _CommentDomain call(
      {@required UniqueId id,
      @required CommentBody body,
      @required StringSingleLine username,
      @required PhotoUrl photoUrl,
      @required StringSingleLine userId,
      StringSingleLine timestamp}) {
    return _CommentDomain(
      id: id,
      body: body,
      username: username,
      photoUrl: photoUrl,
      userId: userId,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentDomain = _$CommentDomainTearOff();

/// @nodoc
mixin _$CommentDomain {
  UniqueId get id;
  CommentBody get body;
  StringSingleLine get username;
  PhotoUrl get photoUrl;
  StringSingleLine get userId;
  StringSingleLine get timestamp;

  $CommentDomainCopyWith<CommentDomain> get copyWith;
}

/// @nodoc
abstract class $CommentDomainCopyWith<$Res> {
  factory $CommentDomainCopyWith(
          CommentDomain value, $Res Function(CommentDomain) then) =
      _$CommentDomainCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      CommentBody body,
      StringSingleLine username,
      PhotoUrl photoUrl,
      StringSingleLine userId,
      StringSingleLine timestamp});
}

/// @nodoc
class _$CommentDomainCopyWithImpl<$Res>
    implements $CommentDomainCopyWith<$Res> {
  _$CommentDomainCopyWithImpl(this._value, this._then);

  final CommentDomain _value;
  // ignore: unused_field
  final $Res Function(CommentDomain) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object username = freezed,
    Object photoUrl = freezed,
    Object userId = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as CommentBody,
      username:
          username == freezed ? _value.username : username as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as PhotoUrl,
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$CommentDomainCopyWith<$Res>
    implements $CommentDomainCopyWith<$Res> {
  factory _$CommentDomainCopyWith(
          _CommentDomain value, $Res Function(_CommentDomain) then) =
      __$CommentDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      CommentBody body,
      StringSingleLine username,
      PhotoUrl photoUrl,
      StringSingleLine userId,
      StringSingleLine timestamp});
}

/// @nodoc
class __$CommentDomainCopyWithImpl<$Res>
    extends _$CommentDomainCopyWithImpl<$Res>
    implements _$CommentDomainCopyWith<$Res> {
  __$CommentDomainCopyWithImpl(
      _CommentDomain _value, $Res Function(_CommentDomain) _then)
      : super(_value, (v) => _then(v as _CommentDomain));

  @override
  _CommentDomain get _value => super._value as _CommentDomain;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object username = freezed,
    Object photoUrl = freezed,
    Object userId = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_CommentDomain(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as CommentBody,
      username:
          username == freezed ? _value.username : username as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as PhotoUrl,
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp as StringSingleLine,
    ));
  }
}

/// @nodoc
class _$_CommentDomain extends _CommentDomain {
  const _$_CommentDomain(
      {@required this.id,
      @required this.body,
      @required this.username,
      @required this.photoUrl,
      @required this.userId,
      this.timestamp})
      : assert(id != null),
        assert(body != null),
        assert(username != null),
        assert(photoUrl != null),
        assert(userId != null),
        super._();

  @override
  final UniqueId id;
  @override
  final CommentBody body;
  @override
  final StringSingleLine username;
  @override
  final PhotoUrl photoUrl;
  @override
  final StringSingleLine userId;
  @override
  final StringSingleLine timestamp;

  @override
  String toString() {
    return 'CommentDomain(id: $id, body: $body, username: $username, photoUrl: $photoUrl, userId: $userId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDomain &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(timestamp);

  @override
  _$CommentDomainCopyWith<_CommentDomain> get copyWith =>
      __$CommentDomainCopyWithImpl<_CommentDomain>(this, _$identity);
}

abstract class _CommentDomain extends CommentDomain {
  const _CommentDomain._() : super._();
  const factory _CommentDomain(
      {@required UniqueId id,
      @required CommentBody body,
      @required StringSingleLine username,
      @required PhotoUrl photoUrl,
      @required StringSingleLine userId,
      StringSingleLine timestamp}) = _$_CommentDomain;

  @override
  UniqueId get id;
  @override
  CommentBody get body;
  @override
  StringSingleLine get username;
  @override
  PhotoUrl get photoUrl;
  @override
  StringSingleLine get userId;
  @override
  StringSingleLine get timestamp;
  @override
  _$CommentDomainCopyWith<_CommentDomain> get copyWith;
}
