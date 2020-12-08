// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedDomainTearOff {
  const _$FeedDomainTearOff();

// ignore: unused_element
  _FeedDomain call(
      {@required UniqueId id,
      @required StringSingleLine type,
      @required StringSingleLine username,
      @required StringSingleLine userId,
      @required StringSingleLine postId,
      @required PhotoUrl userAvatarUrl,
      @required PhotoUrl thumbnailUrl,
      Timestamp timestamp}) {
    return _FeedDomain(
      id: id,
      type: type,
      username: username,
      userId: userId,
      postId: postId,
      userAvatarUrl: userAvatarUrl,
      thumbnailUrl: thumbnailUrl,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedDomain = _$FeedDomainTearOff();

/// @nodoc
mixin _$FeedDomain {
  UniqueId get id;
  StringSingleLine get type;
  StringSingleLine get username;
  StringSingleLine get userId;
  StringSingleLine get postId;
  PhotoUrl get userAvatarUrl;
  PhotoUrl get thumbnailUrl;
  Timestamp get timestamp;

  $FeedDomainCopyWith<FeedDomain> get copyWith;
}

/// @nodoc
abstract class $FeedDomainCopyWith<$Res> {
  factory $FeedDomainCopyWith(
          FeedDomain value, $Res Function(FeedDomain) then) =
      _$FeedDomainCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine type,
      StringSingleLine username,
      StringSingleLine userId,
      StringSingleLine postId,
      PhotoUrl userAvatarUrl,
      PhotoUrl thumbnailUrl,
      Timestamp timestamp});
}

/// @nodoc
class _$FeedDomainCopyWithImpl<$Res> implements $FeedDomainCopyWith<$Res> {
  _$FeedDomainCopyWithImpl(this._value, this._then);

  final FeedDomain _value;
  // ignore: unused_field
  final $Res Function(FeedDomain) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object userAvatarUrl = freezed,
    Object thumbnailUrl = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as StringSingleLine,
      username:
          username == freezed ? _value.username : username as StringSingleLine,
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      postId: postId == freezed ? _value.postId : postId as StringSingleLine,
      userAvatarUrl: userAvatarUrl == freezed
          ? _value.userAvatarUrl
          : userAvatarUrl as PhotoUrl,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as PhotoUrl,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }
}

/// @nodoc
abstract class _$FeedDomainCopyWith<$Res> implements $FeedDomainCopyWith<$Res> {
  factory _$FeedDomainCopyWith(
          _FeedDomain value, $Res Function(_FeedDomain) then) =
      __$FeedDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine type,
      StringSingleLine username,
      StringSingleLine userId,
      StringSingleLine postId,
      PhotoUrl userAvatarUrl,
      PhotoUrl thumbnailUrl,
      Timestamp timestamp});
}

/// @nodoc
class __$FeedDomainCopyWithImpl<$Res> extends _$FeedDomainCopyWithImpl<$Res>
    implements _$FeedDomainCopyWith<$Res> {
  __$FeedDomainCopyWithImpl(
      _FeedDomain _value, $Res Function(_FeedDomain) _then)
      : super(_value, (v) => _then(v as _FeedDomain));

  @override
  _FeedDomain get _value => super._value as _FeedDomain;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object userAvatarUrl = freezed,
    Object thumbnailUrl = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_FeedDomain(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as StringSingleLine,
      username:
          username == freezed ? _value.username : username as StringSingleLine,
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      postId: postId == freezed ? _value.postId : postId as StringSingleLine,
      userAvatarUrl: userAvatarUrl == freezed
          ? _value.userAvatarUrl
          : userAvatarUrl as PhotoUrl,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as PhotoUrl,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }
}

/// @nodoc
class _$_FeedDomain extends _FeedDomain {
  const _$_FeedDomain(
      {@required this.id,
      @required this.type,
      @required this.username,
      @required this.userId,
      @required this.postId,
      @required this.userAvatarUrl,
      @required this.thumbnailUrl,
      this.timestamp})
      : assert(id != null),
        assert(type != null),
        assert(username != null),
        assert(userId != null),
        assert(postId != null),
        assert(userAvatarUrl != null),
        assert(thumbnailUrl != null),
        super._();

  @override
  final UniqueId id;
  @override
  final StringSingleLine type;
  @override
  final StringSingleLine username;
  @override
  final StringSingleLine userId;
  @override
  final StringSingleLine postId;
  @override
  final PhotoUrl userAvatarUrl;
  @override
  final PhotoUrl thumbnailUrl;
  @override
  final Timestamp timestamp;

  @override
  String toString() {
    return 'FeedDomain(id: $id, type: $type, username: $username, userId: $userId, postId: $postId, userAvatarUrl: $userAvatarUrl, thumbnailUrl: $thumbnailUrl, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedDomain &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.userAvatarUrl, userAvatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.userAvatarUrl, userAvatarUrl)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(userAvatarUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(timestamp);

  @override
  _$FeedDomainCopyWith<_FeedDomain> get copyWith =>
      __$FeedDomainCopyWithImpl<_FeedDomain>(this, _$identity);
}

abstract class _FeedDomain extends FeedDomain {
  const _FeedDomain._() : super._();
  const factory _FeedDomain(
      {@required UniqueId id,
      @required StringSingleLine type,
      @required StringSingleLine username,
      @required StringSingleLine userId,
      @required StringSingleLine postId,
      @required PhotoUrl userAvatarUrl,
      @required PhotoUrl thumbnailUrl,
      Timestamp timestamp}) = _$_FeedDomain;

  @override
  UniqueId get id;
  @override
  StringSingleLine get type;
  @override
  StringSingleLine get username;
  @override
  StringSingleLine get userId;
  @override
  StringSingleLine get postId;
  @override
  PhotoUrl get userAvatarUrl;
  @override
  PhotoUrl get thumbnailUrl;
  @override
  Timestamp get timestamp;
  @override
  _$FeedDomainCopyWith<_FeedDomain> get copyWith;
}
