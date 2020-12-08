// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

// ignore: unused_element
  _CommentDto call(
      {@JsonKey(ignore: true)
          String id,
      @required
          String body,
      @required
          String avatarUrl,
      @required
          String username,
      @required
          String userId,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp}) {
    return _CommentDto(
      id: id,
      body: body,
      avatarUrl: avatarUrl,
      username: username,
      userId: userId,
      serverTimestamp: serverTimestamp,
    );
  }

// ignore: unused_element
  CommentDto fromJson(Map<String, Object> json) {
    return CommentDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentDto = _$CommentDtoTearOff();

/// @nodoc
mixin _$CommentDto {
  @JsonKey(ignore: true)
  String get id;
  String get body;
  String get avatarUrl;
  String get username;
  String get userId;
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;

  Map<String, dynamic> toJson();
  $CommentDtoCopyWith<CommentDto> get copyWith;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String body,
      String avatarUrl,
      String username,
      String userId,
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp});
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res> implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  final CommentDto _value;
  // ignore: unused_field
  final $Res Function(CommentDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object avatarUrl = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      username: username == freezed ? _value.username : username as String,
      userId: userId == freezed ? _value.userId : userId as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(
          _CommentDto value, $Res Function(_CommentDto) then) =
      __$CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String body,
      String avatarUrl,
      String username,
      String userId,
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp});
}

/// @nodoc
class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res>
    implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(
      _CommentDto _value, $Res Function(_CommentDto) _then)
      : super(_value, (v) => _then(v as _CommentDto));

  @override
  _CommentDto get _value => super._value as _CommentDto;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object avatarUrl = freezed,
    Object username = freezed,
    Object userId = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_CommentDto(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      username: username == freezed ? _value.username : username as String,
      userId: userId == freezed ? _value.userId : userId as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentDto extends _CommentDto with DiagnosticableTreeMixin {
  const _$_CommentDto(
      {@JsonKey(ignore: true)
          this.id,
      @required
          this.body,
      @required
          this.avatarUrl,
      @required
          this.username,
      @required
          this.userId,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          this.serverTimestamp})
      : assert(body != null),
        assert(avatarUrl != null),
        assert(username != null),
        assert(userId != null),
        assert(serverTimestamp != null),
        super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String body;
  @override
  final String avatarUrl;
  @override
  final String username;
  @override
  final String userId;
  @override
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  final FieldValue serverTimestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentDto(id: $id, body: $body, avatarUrl: $avatarUrl, username: $username, userId: $userId, serverTimestamp: $serverTimestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('serverTimestamp', serverTimestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimestamp, serverTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(serverTimestamp);

  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  const _CommentDto._() : super._();
  const factory _CommentDto(
      {@JsonKey(ignore: true)
          String id,
      @required
          String body,
      @required
          String avatarUrl,
      @required
          String username,
      @required
          String userId,
      @required
      @JsonKey(name: 'server_timestamp')
      @ServerTimestampConverter()
          FieldValue serverTimestamp}) = _$_CommentDto;

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get body;
  @override
  String get avatarUrl;
  @override
  String get username;
  @override
  String get userId;
  @override
  @JsonKey(name: 'server_timestamp')
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith;
}
