// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserFormEventTearOff {
  const _$UserFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<UserDomain> initialUser) {
    return _Initialized(
      initialUser,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  _emailChanged emailChanged(String emailStr) {
    return _emailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  _BioChanged bioChanged(String bioStr) {
    return _BioChanged(
      bioStr,
    );
  }

// ignore: unused_element
  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
// ignore: unused_element
const $UserFormEvent = _$UserFormEventTearOff();

/// @nodoc
mixin _$UserFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserFormEventCopyWith<$Res> {
  factory $UserFormEventCopyWith(
          UserFormEvent value, $Res Function(UserFormEvent) then) =
      _$UserFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFormEventCopyWithImpl<$Res>
    implements $UserFormEventCopyWith<$Res> {
  _$UserFormEventCopyWithImpl(this._value, this._then);

  final UserFormEvent _value;
  // ignore: unused_field
  final $Res Function(UserFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<UserDomain> initialUser});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialUser = freezed,
  }) {
    return _then(_Initialized(
      initialUser == freezed
          ? _value.initialUser
          : initialUser as Option<UserDomain>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUser) : assert(initialUser != null);

  @override
  final Option<UserDomain> initialUser;

  @override
  String toString() {
    return 'UserFormEvent.initialized(initialUser: $initialUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUser, initialUser) ||
                const DeepCollectionEquality()
                    .equals(other.initialUser, initialUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialUser);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return initialized(initialUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserFormEvent {
  const factory _Initialized(Option<UserDomain> initialUser) = _$_Initialized;

  Option<UserDomain> get initialUser;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'UserFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements UserFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
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
    extends _$UserFormEventCopyWithImpl<$Res>
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
    return 'UserFormEvent.usernameChanged(usernameStr: $usernameStr)';
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
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements UserFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$emailChangedCopyWith<$Res> {
  factory _$emailChangedCopyWith(
          _emailChanged value, $Res Function(_emailChanged) then) =
      __$emailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$emailChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$emailChangedCopyWith<$Res> {
  __$emailChangedCopyWithImpl(
      _emailChanged _value, $Res Function(_emailChanged) _then)
      : super(_value, (v) => _then(v as _emailChanged));

  @override
  _emailChanged get _value => super._value as _emailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(_emailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$_emailChanged implements _emailChanged {
  const _$_emailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'UserFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _emailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  _$emailChangedCopyWith<_emailChanged> get copyWith =>
      __$emailChangedCopyWithImpl<_emailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _emailChanged implements UserFormEvent {
  const factory _emailChanged(String emailStr) = _$_emailChanged;

  String get emailStr;
  _$emailChangedCopyWith<_emailChanged> get copyWith;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bioStr});
}

/// @nodoc
class __$BioChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object bioStr = freezed,
  }) {
    return _then(_BioChanged(
      bioStr == freezed ? _value.bioStr : bioStr as String,
    ));
  }
}

/// @nodoc
class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bioStr) : assert(bioStr != null);

  @override
  final String bioStr;

  @override
  String toString() {
    return 'UserFormEvent.bioChanged(bioStr: $bioStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bioStr, bioStr) ||
                const DeepCollectionEquality().equals(other.bioStr, bioStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bioStr);

  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return bioChanged(bioStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(bioStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements UserFormEvent {
  const factory _BioChanged(String bioStr) = _$_BioChanged;

  String get bioStr;
  _$BioChangedCopyWith<_BioChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
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
    return 'UserFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<UserDomain> initialUser),
    @required Result nameChanged(String nameStr),
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result bioChanged(String bioStr),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserDomain> initialUser),
    Result nameChanged(String nameStr),
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result bioChanged(String bioStr),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_emailChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(bioChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_emailChanged value),
    Result bioChanged(_BioChanged value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements UserFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

// ignore: unused_element
  _UserFormState call(
      {@required UserDomain user,
      @required bool isEditing,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<UserFailure, Unit>> failureOrSuccessOption}) {
    return _UserFormState(
      user: user,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  UserDomain get user;
  bool get isEditing;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<UserFailure, Unit>> get failureOrSuccessOption;

  $UserFormStateCopyWith<UserFormState> get copyWith;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {UserDomain user,
      bool isEditing,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<UserFailure, Unit>> failureOrSuccessOption});

  $UserDomainCopyWith<$Res> get user;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserDomain,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }

  @override
  $UserDomainCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserDomainCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserFormStateCopyWith(
          _UserFormState value, $Res Function(_UserFormState) then) =
      __$UserFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDomain user,
      bool isEditing,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<UserFailure, Unit>> failureOrSuccessOption});

  @override
  $UserDomainCopyWith<$Res> get user;
}

/// @nodoc
class __$UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserFormStateCopyWith<$Res> {
  __$UserFormStateCopyWithImpl(
      _UserFormState _value, $Res Function(_UserFormState) _then)
      : super(_value, (v) => _then(v as _UserFormState));

  @override
  _UserFormState get _value => super._value as _UserFormState;

  @override
  $Res call({
    Object user = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_UserFormState(
      user: user == freezed ? _value.user : user as UserDomain,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UserFormState implements _UserFormState {
  const _$_UserFormState(
      {@required this.user,
      @required this.isEditing,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.failureOrSuccessOption})
      : assert(user != null),
        assert(isEditing != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(failureOrSuccessOption != null);

  @override
  final UserDomain user;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<UserFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, isEditing: $isEditing, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserFormState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      __$UserFormStateCopyWithImpl<_UserFormState>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  const factory _UserFormState(
          {@required UserDomain user,
          @required bool isEditing,
          @required bool isSubmitting,
          @required bool showErrorMessages,
          @required Option<Either<UserFailure, Unit>> failureOrSuccessOption}) =
      _$_UserFormState;

  @override
  UserDomain get user;
  @override
  bool get isEditing;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<UserFailure, Unit>> get failureOrSuccessOption;
  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith;
}
