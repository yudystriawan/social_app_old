// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
class _$PostDtoTearOff {
  const _$PostDtoTearOff();

// ignore: unused_element
  _PostDto call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(name: 'image_url') String imageUrl,
      @required String body,
      @required String location,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _PostDto(
      id: id,
      imageUrl: imageUrl,
      body: body,
      location: location,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  PostDto fromJson(Map<String, Object> json) {
    return PostDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostDto = _$PostDtoTearOff();

/// @nodoc
mixin _$PostDto {
  @JsonKey(ignore: true)
  String get id;
  @JsonKey(name: 'image_url')
  String get imageUrl;
  String get body;
  String get location;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $PostDtoCopyWith<PostDto> get copyWith;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(name: 'image_url') String imageUrl,
      String body,
      String location,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
    Object location = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      body: body == freezed ? _value.body : body as String,
      location: location == freezed ? _value.location : location as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) then) =
      __$PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(name: 'image_url') String imageUrl,
      String body,
      String location,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(_PostDto _value, $Res Function(_PostDto) _then)
      : super(_value, (v) => _then(v as _PostDto));

  @override
  _PostDto get _value => super._value as _PostDto;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
    Object location = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_PostDto(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      body: body == freezed ? _value.body : body as String,
      location: location == freezed ? _value.location : location as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostDto implements _PostDto {
  const _$_PostDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: 'image_url') this.imageUrl,
      @required this.body,
      @required this.location,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(body != null),
        assert(location != null),
        assert(serverTimeStamp != null);

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String body;
  @override
  final String location;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'PostDto(id: $id, imageUrl: $imageUrl, body: $body, location: $location, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDtoToJson(this);
  }
}

abstract class _PostDto implements PostDto {
  const factory _PostDto(
          {@JsonKey(ignore: true) String id,
          @JsonKey(name: 'image_url') String imageUrl,
          @required String body,
          @required String location,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get body;
  @override
  String get location;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$PostDtoCopyWith<_PostDto> get copyWith;
}
