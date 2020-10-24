// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDomainTearOff {
  const _$UserDomainTearOff();

// ignore: unused_element
  _UserDomain call({@required UniqueId id, @required Username username}) {
    return _UserDomain(
      id: id,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDomain = _$UserDomainTearOff();

/// @nodoc
mixin _$UserDomain {
  UniqueId get id;
  Username get username;

  $UserDomainCopyWith<UserDomain> get copyWith;
}

/// @nodoc
abstract class $UserDomainCopyWith<$Res> {
  factory $UserDomainCopyWith(
          UserDomain value, $Res Function(UserDomain) then) =
      _$UserDomainCopyWithImpl<$Res>;
  $Res call({UniqueId id, Username username});
}

/// @nodoc
class _$UserDomainCopyWithImpl<$Res> implements $UserDomainCopyWith<$Res> {
  _$UserDomainCopyWithImpl(this._value, this._then);

  final UserDomain _value;
  // ignore: unused_field
  final $Res Function(UserDomain) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
abstract class _$UserDomainCopyWith<$Res> implements $UserDomainCopyWith<$Res> {
  factory _$UserDomainCopyWith(
          _UserDomain value, $Res Function(_UserDomain) then) =
      __$UserDomainCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Username username});
}

/// @nodoc
class __$UserDomainCopyWithImpl<$Res> extends _$UserDomainCopyWithImpl<$Res>
    implements _$UserDomainCopyWith<$Res> {
  __$UserDomainCopyWithImpl(
      _UserDomain _value, $Res Function(_UserDomain) _then)
      : super(_value, (v) => _then(v as _UserDomain));

  @override
  _UserDomain get _value => super._value as _UserDomain;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
  }) {
    return _then(_UserDomain(
      id: id == freezed ? _value.id : id as UniqueId,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
class _$_UserDomain extends _UserDomain {
  const _$_UserDomain({@required this.id, @required this.username})
      : assert(id != null),
        assert(username != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Username username;

  @override
  String toString() {
    return 'UserDomain(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDomain &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username);

  @override
  _$UserDomainCopyWith<_UserDomain> get copyWith =>
      __$UserDomainCopyWithImpl<_UserDomain>(this, _$identity);
}

abstract class _UserDomain extends UserDomain {
  const _UserDomain._() : super._();
  const factory _UserDomain(
      {@required UniqueId id, @required Username username}) = _$_UserDomain;

  @override
  UniqueId get id;
  @override
  Username get username;
  @override
  _$UserDomainCopyWith<_UserDomain> get copyWith;
}
