// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostDomainTearOff {
  const _$PostDomainTearOff();

// ignore: unused_element
  _PostDomain call(
      {@required UniqueId id,
      @required PostImageUrl imageUrl,
      @required PostBody body,
      @required PostLocation location}) {
    return _PostDomain(
      id: id,
      imageUrl: imageUrl,
      body: body,
      location: location,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostDomain = _$PostDomainTearOff();

/// @nodoc
mixin _$PostDomain {
  UniqueId get id;
  PostImageUrl get imageUrl;
  PostBody get body;
  PostLocation get location;

  $PostDomainCopyWith<PostDomain> get copyWith;
}

/// @nodoc
abstract class $PostDomainCopyWith<$Res> {
  factory $PostDomainCopyWith(
          PostDomain value, $Res Function(PostDomain) then) =
      _$PostDomainCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      PostImageUrl imageUrl,
      PostBody body,
      PostLocation location});
}

/// @nodoc
class _$PostDomainCopyWithImpl<$Res> implements $PostDomainCopyWith<$Res> {
  _$PostDomainCopyWithImpl(this._value, this._then);

  final PostDomain _value;
  // ignore: unused_field
  final $Res Function(PostDomain) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl:
          imageUrl == freezed ? _value.imageUrl : imageUrl as PostImageUrl,
      body: body == freezed ? _value.body : body as PostBody,
      location:
          location == freezed ? _value.location : location as PostLocation,
    ));
  }
}

/// @nodoc
abstract class _$PostDomainCopyWith<$Res> implements $PostDomainCopyWith<$Res> {
  factory _$PostDomainCopyWith(
          _PostDomain value, $Res Function(_PostDomain) then) =
      __$PostDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      PostImageUrl imageUrl,
      PostBody body,
      PostLocation location});
}

/// @nodoc
class __$PostDomainCopyWithImpl<$Res> extends _$PostDomainCopyWithImpl<$Res>
    implements _$PostDomainCopyWith<$Res> {
  __$PostDomainCopyWithImpl(
      _PostDomain _value, $Res Function(_PostDomain) _then)
      : super(_value, (v) => _then(v as _PostDomain));

  @override
  _PostDomain get _value => super._value as _PostDomain;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
    Object location = freezed,
  }) {
    return _then(_PostDomain(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl:
          imageUrl == freezed ? _value.imageUrl : imageUrl as PostImageUrl,
      body: body == freezed ? _value.body : body as PostBody,
      location:
          location == freezed ? _value.location : location as PostLocation,
    ));
  }
}

/// @nodoc
class _$_PostDomain extends _PostDomain {
  const _$_PostDomain(
      {@required this.id,
      @required this.imageUrl,
      @required this.body,
      @required this.location})
      : assert(id != null),
        assert(imageUrl != null),
        assert(body != null),
        assert(location != null),
        super._();

  @override
  final UniqueId id;
  @override
  final PostImageUrl imageUrl;
  @override
  final PostBody body;
  @override
  final PostLocation location;

  @override
  String toString() {
    return 'PostDomain(id: $id, imageUrl: $imageUrl, body: $body, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDomain &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$PostDomainCopyWith<_PostDomain> get copyWith =>
      __$PostDomainCopyWithImpl<_PostDomain>(this, _$identity);
}

abstract class _PostDomain extends PostDomain {
  const _PostDomain._() : super._();
  const factory _PostDomain(
      {@required UniqueId id,
      @required PostImageUrl imageUrl,
      @required PostBody body,
      @required PostLocation location}) = _$_PostDomain;

  @override
  UniqueId get id;
  @override
  PostImageUrl get imageUrl;
  @override
  PostBody get body;
  @override
  PostLocation get location;
  @override
  _$PostDomainCopyWith<_PostDomain> get copyWith;
}
