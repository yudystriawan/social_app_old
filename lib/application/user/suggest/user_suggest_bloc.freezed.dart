// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_suggest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSuggestEventTearOff {
  const _$UserSuggestEventTearOff();

// ignore: unused_element
  _GetUserSuggestion getUserSuggestion(String userId) {
    return _GetUserSuggestion(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSuggestEvent = _$UserSuggestEventTearOff();

/// @nodoc
mixin _$UserSuggestEvent {
  String get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUserSuggestion(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUserSuggestion(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUserSuggestion(_GetUserSuggestion value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUserSuggestion(_GetUserSuggestion value),
    @required TResult orElse(),
  });

  $UserSuggestEventCopyWith<UserSuggestEvent> get copyWith;
}

/// @nodoc
abstract class $UserSuggestEventCopyWith<$Res> {
  factory $UserSuggestEventCopyWith(
          UserSuggestEvent value, $Res Function(UserSuggestEvent) then) =
      _$UserSuggestEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$UserSuggestEventCopyWithImpl<$Res>
    implements $UserSuggestEventCopyWith<$Res> {
  _$UserSuggestEventCopyWithImpl(this._value, this._then);

  final UserSuggestEvent _value;
  // ignore: unused_field
  final $Res Function(UserSuggestEvent) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$GetUserSuggestionCopyWith<$Res>
    implements $UserSuggestEventCopyWith<$Res> {
  factory _$GetUserSuggestionCopyWith(
          _GetUserSuggestion value, $Res Function(_GetUserSuggestion) then) =
      __$GetUserSuggestionCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$GetUserSuggestionCopyWithImpl<$Res>
    extends _$UserSuggestEventCopyWithImpl<$Res>
    implements _$GetUserSuggestionCopyWith<$Res> {
  __$GetUserSuggestionCopyWithImpl(
      _GetUserSuggestion _value, $Res Function(_GetUserSuggestion) _then)
      : super(_value, (v) => _then(v as _GetUserSuggestion));

  @override
  _GetUserSuggestion get _value => super._value as _GetUserSuggestion;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetUserSuggestion(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetUserSuggestion implements _GetUserSuggestion {
  const _$_GetUserSuggestion(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserSuggestEvent.getUserSuggestion(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserSuggestion &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  _$GetUserSuggestionCopyWith<_GetUserSuggestion> get copyWith =>
      __$GetUserSuggestionCopyWithImpl<_GetUserSuggestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUserSuggestion(String userId),
  }) {
    assert(getUserSuggestion != null);
    return getUserSuggestion(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUserSuggestion(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserSuggestion != null) {
      return getUserSuggestion(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUserSuggestion(_GetUserSuggestion value),
  }) {
    assert(getUserSuggestion != null);
    return getUserSuggestion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUserSuggestion(_GetUserSuggestion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserSuggestion != null) {
      return getUserSuggestion(this);
    }
    return orElse();
  }
}

abstract class _GetUserSuggestion implements UserSuggestEvent {
  const factory _GetUserSuggestion(String userId) = _$_GetUserSuggestion;

  @override
  String get userId;
  @override
  _$GetUserSuggestionCopyWith<_GetUserSuggestion> get copyWith;
}

/// @nodoc
class _$UserSuggestStateTearOff {
  const _$UserSuggestStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadFailure loadFailure(UserFailure failure) {
    return _LoadFailure(
      failure,
    );
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<UserDomain> users) {
    return _LoadSuccess(
      users,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSuggestState = _$UserSuggestStateTearOff();

/// @nodoc
mixin _$UserSuggestState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(UserFailure failure),
    @required TResult loadSuccess(List<UserDomain> users),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(UserFailure failure),
    TResult loadSuccess(List<UserDomain> users),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserSuggestStateCopyWith<$Res> {
  factory $UserSuggestStateCopyWith(
          UserSuggestState value, $Res Function(UserSuggestState) then) =
      _$UserSuggestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSuggestStateCopyWithImpl<$Res>
    implements $UserSuggestStateCopyWith<$Res> {
  _$UserSuggestStateCopyWithImpl(this._value, this._then);

  final UserSuggestState _value;
  // ignore: unused_field
  final $Res Function(UserSuggestState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserSuggestStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserSuggestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(UserFailure failure),
    @required TResult loadSuccess(List<UserDomain> users),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(UserFailure failure),
    TResult loadSuccess(List<UserDomain> users),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserSuggestState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$UserSuggestStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserSuggestState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(UserFailure failure),
    @required TResult loadSuccess(List<UserDomain> users),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(UserFailure failure),
    TResult loadSuccess(List<UserDomain> users),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserSuggestState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserSuggestStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UserSuggestState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(UserFailure failure),
    @required TResult loadSuccess(List<UserDomain> users),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(UserFailure failure),
    TResult loadSuccess(List<UserDomain> users),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserSuggestState {
  const factory _LoadFailure(UserFailure failure) = _$_LoadFailure;

  UserFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<UserDomain> users});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserSuggestStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed ? _value.users : users as List<UserDomain>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.users) : assert(users != null);

  @override
  final List<UserDomain> users;

  @override
  String toString() {
    return 'UserSuggestState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(UserFailure failure),
    @required TResult loadSuccess(List<UserDomain> users),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(UserFailure failure),
    TResult loadSuccess(List<UserDomain> users),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_LoadFailure value),
    TResult loadSuccess(_LoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserSuggestState {
  const factory _LoadSuccess(List<UserDomain> users) = _$_LoadSuccess;

  List<UserDomain> get users;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}
