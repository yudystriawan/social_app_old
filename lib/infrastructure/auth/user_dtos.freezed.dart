// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@JsonKey(ignore: true) String id,
      @required String username,
      @required String name,
      @required String email,
      @required @JsonKey(name: 'photo_url') String photoUrl,
      @required String bio,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _UserDto(
      id: id,
      username: username,
      name: name,
      email: email,
      photoUrl: photoUrl,
      bio: bio,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String get id;
  String get username;
  String get name;
  String get email;
  @JsonKey(name: 'photo_url')
  String get photoUrl;
  String get bio;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String name,
      String email,
      @JsonKey(name: 'photo_url') String photoUrl,
      String bio,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object bio = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      bio: bio == freezed ? _value.bio : bio as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String name,
      String email,
      @JsonKey(name: 'photo_url') String photoUrl,
      String bio,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object bio = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      bio: bio == freezed ? _value.bio : bio as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      @required this.username,
      @required this.name,
      @required this.email,
      @required @JsonKey(name: 'photo_url') this.photoUrl,
      @required this.bio,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(username != null),
        assert(name != null),
        assert(email != null),
        assert(photoUrl != null),
        assert(bio != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;
  @override
  final String bio;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username, name: $name, email: $email, photoUrl: $photoUrl, bio: $bio, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
          {@JsonKey(ignore: true) String id,
          @required String username,
          @required String name,
          @required String email,
          @required @JsonKey(name: 'photo_url') String photoUrl,
          @required String bio,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get username;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'photo_url')
  String get photoUrl;
  @override
  String get bio;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
