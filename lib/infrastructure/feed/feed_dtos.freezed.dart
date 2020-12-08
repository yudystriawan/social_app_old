// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FeedDto _$FeedDtoFromJson(Map<String, dynamic> json) {
  return _FeedDto.fromJson(json);
}

/// @nodoc
class _$FeedDtoTearOff {
  const _$FeedDtoTearOff();

// ignore: unused_element
  _FeedDto call(
      {@JsonKey(ignore: true)
          String id,
      @required
          String type,
      @required
          String username,
      @required
          String userId,
      @required
          String postId,
      @required
          String userAvatarUrl,
      @required
          String thumbnailUrl,
      @JsonKey(name: 'comment_body')
          String commentBody,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp}) {
    return _FeedDto(
      id: id,
      type: type,
      username: username,
      userId: userId,
      postId: postId,
      userAvatarUrl: userAvatarUrl,
      thumbnailUrl: thumbnailUrl,
      commentBody: commentBody,
      serverTimestamp: serverTimestamp,
    );
  }

// ignore: unused_element
  FeedDto fromJson(Map<String, Object> json) {
    return FeedDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FeedDto = _$FeedDtoTearOff();

/// @nodoc
mixin _$FeedDto {
  @JsonKey(ignore: true)
  String get id;
  String get type;
  String get username;
  String get userId;
  String get postId;
  String get userAvatarUrl;
  String get thumbnailUrl;
  @JsonKey(name: 'comment_body')
  String get commentBody;
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;

  Map<String, dynamic> toJson();
  $FeedDtoCopyWith<FeedDto> get copyWith;
}

/// @nodoc
abstract class $FeedDtoCopyWith<$Res> {
  factory $FeedDtoCopyWith(FeedDto value, $Res Function(FeedDto) then) =
      _$FeedDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String type,
      String username,
      String userId,
      String postId,
      String userAvatarUrl,
      String thumbnailUrl,
      @JsonKey(name: 'comment_body')
          String commentBody,
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp});
}

/// @nodoc
class _$FeedDtoCopyWithImpl<$Res> implements $FeedDtoCopyWith<$Res> {
  _$FeedDtoCopyWithImpl(this._value, this._then);

  final FeedDto _value;
  // ignore: unused_field
  final $Res Function(FeedDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object userAvatarUrl = freezed,
    Object thumbnailUrl = freezed,
    Object commentBody = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as String,
      username: username == freezed ? _value.username : username as String,
      userId: userId == freezed ? _value.userId : userId as String,
      postId: postId == freezed ? _value.postId : postId as String,
      userAvatarUrl: userAvatarUrl == freezed
          ? _value.userAvatarUrl
          : userAvatarUrl as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      commentBody:
          commentBody == freezed ? _value.commentBody : commentBody as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$FeedDtoCopyWith<$Res> implements $FeedDtoCopyWith<$Res> {
  factory _$FeedDtoCopyWith(_FeedDto value, $Res Function(_FeedDto) then) =
      __$FeedDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String type,
      String username,
      String userId,
      String postId,
      String userAvatarUrl,
      String thumbnailUrl,
      @JsonKey(name: 'comment_body')
          String commentBody,
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp});
}

/// @nodoc
class __$FeedDtoCopyWithImpl<$Res> extends _$FeedDtoCopyWithImpl<$Res>
    implements _$FeedDtoCopyWith<$Res> {
  __$FeedDtoCopyWithImpl(_FeedDto _value, $Res Function(_FeedDto) _then)
      : super(_value, (v) => _then(v as _FeedDto));

  @override
  _FeedDto get _value => super._value as _FeedDto;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object userAvatarUrl = freezed,
    Object thumbnailUrl = freezed,
    Object commentBody = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_FeedDto(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as String,
      username: username == freezed ? _value.username : username as String,
      userId: userId == freezed ? _value.userId : userId as String,
      postId: postId == freezed ? _value.postId : postId as String,
      userAvatarUrl: userAvatarUrl == freezed
          ? _value.userAvatarUrl
          : userAvatarUrl as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      commentBody:
          commentBody == freezed ? _value.commentBody : commentBody as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeedDto extends _FeedDto {
  const _$_FeedDto(
      {@JsonKey(ignore: true)
          this.id,
      @required
          this.type,
      @required
          this.username,
      @required
          this.userId,
      @required
          this.postId,
      @required
          this.userAvatarUrl,
      @required
          this.thumbnailUrl,
      @JsonKey(name: 'comment_body')
          this.commentBody,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          this.serverTimestamp})
      : assert(type != null),
        assert(username != null),
        assert(userId != null),
        assert(postId != null),
        assert(userAvatarUrl != null),
        assert(thumbnailUrl != null),
        assert(serverTimestamp != null),
        super._();

  factory _$_FeedDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FeedDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String type;
  @override
  final String username;
  @override
  final String userId;
  @override
  final String postId;
  @override
  final String userAvatarUrl;
  @override
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'comment_body')
  final String commentBody;
  @override
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  final FieldValue serverTimestamp;

  @override
  String toString() {
    return 'FeedDto(id: $id, type: $type, username: $username, userId: $userId, postId: $postId, userAvatarUrl: $userAvatarUrl, thumbnailUrl: $thumbnailUrl, commentBody: $commentBody, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedDto &&
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
            (identical(other.commentBody, commentBody) ||
                const DeepCollectionEquality()
                    .equals(other.commentBody, commentBody)) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimestamp, serverTimestamp)));
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
      const DeepCollectionEquality().hash(commentBody) ^
      const DeepCollectionEquality().hash(serverTimestamp);

  @override
  _$FeedDtoCopyWith<_FeedDto> get copyWith =>
      __$FeedDtoCopyWithImpl<_FeedDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeedDtoToJson(this);
  }
}

abstract class _FeedDto extends FeedDto {
  const _FeedDto._() : super._();
  const factory _FeedDto(
      {@JsonKey(ignore: true)
          String id,
      @required
          String type,
      @required
          String username,
      @required
          String userId,
      @required
          String postId,
      @required
          String userAvatarUrl,
      @required
          String thumbnailUrl,
      @JsonKey(name: 'comment_body')
          String commentBody,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp}) = _$_FeedDto;

  factory _FeedDto.fromJson(Map<String, dynamic> json) = _$_FeedDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get type;
  @override
  String get username;
  @override
  String get userId;
  @override
  String get postId;
  @override
  String get userAvatarUrl;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'comment_body')
  String get commentBody;
  @override
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;
  @override
  _$FeedDtoCopyWith<_FeedDto> get copyWith;
}
