// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'follow_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowActorEventTearOff {
  const _$FollowActorEventTearOff();

// ignore: unused_element
  _ToggleFollow toggleFollow(
      {@required String userId,
      @required UserDomain currentUser,
      @required bool isFollowing}) {
    return _ToggleFollow(
      userId: userId,
      currentUser: currentUser,
      isFollowing: isFollowing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowActorEvent = _$FollowActorEventTearOff();

/// @nodoc
mixin _$FollowActorEvent {
  String get userId;
  UserDomain get currentUser;
  bool get isFollowing;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult toggleFollow(
            String userId, UserDomain currentUser, bool isFollowing),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult toggleFollow(
        String userId, UserDomain currentUser, bool isFollowing),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult toggleFollow(_ToggleFollow value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult toggleFollow(_ToggleFollow value),
    @required TResult orElse(),
  });

  $FollowActorEventCopyWith<FollowActorEvent> get copyWith;
}

/// @nodoc
abstract class $FollowActorEventCopyWith<$Res> {
  factory $FollowActorEventCopyWith(
          FollowActorEvent value, $Res Function(FollowActorEvent) then) =
      _$FollowActorEventCopyWithImpl<$Res>;
  $Res call({String userId, UserDomain currentUser, bool isFollowing});

  $UserDomainCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$FollowActorEventCopyWithImpl<$Res>
    implements $FollowActorEventCopyWith<$Res> {
  _$FollowActorEventCopyWithImpl(this._value, this._then);

  final FollowActorEvent _value;
  // ignore: unused_field
  final $Res Function(FollowActorEvent) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object currentUser = freezed,
    Object isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as UserDomain,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }

  @override
  $UserDomainCopyWith<$Res> get currentUser {
    if (_value.currentUser == null) {
      return null;
    }
    return $UserDomainCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc
abstract class _$ToggleFollowCopyWith<$Res>
    implements $FollowActorEventCopyWith<$Res> {
  factory _$ToggleFollowCopyWith(
          _ToggleFollow value, $Res Function(_ToggleFollow) then) =
      __$ToggleFollowCopyWithImpl<$Res>;
  @override
  $Res call({String userId, UserDomain currentUser, bool isFollowing});

  @override
  $UserDomainCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$ToggleFollowCopyWithImpl<$Res>
    extends _$FollowActorEventCopyWithImpl<$Res>
    implements _$ToggleFollowCopyWith<$Res> {
  __$ToggleFollowCopyWithImpl(
      _ToggleFollow _value, $Res Function(_ToggleFollow) _then)
      : super(_value, (v) => _then(v as _ToggleFollow));

  @override
  _ToggleFollow get _value => super._value as _ToggleFollow;

  @override
  $Res call({
    Object userId = freezed,
    Object currentUser = freezed,
    Object isFollowing = freezed,
  }) {
    return _then(_ToggleFollow(
      userId: userId == freezed ? _value.userId : userId as String,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as UserDomain,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
class _$_ToggleFollow implements _ToggleFollow {
  const _$_ToggleFollow(
      {@required this.userId,
      @required this.currentUser,
      @required this.isFollowing})
      : assert(userId != null),
        assert(currentUser != null),
        assert(isFollowing != null);

  @override
  final String userId;
  @override
  final UserDomain currentUser;
  @override
  final bool isFollowing;

  @override
  String toString() {
    return 'FollowActorEvent.toggleFollow(userId: $userId, currentUser: $currentUser, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleFollow &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(isFollowing);

  @override
  _$ToggleFollowCopyWith<_ToggleFollow> get copyWith =>
      __$ToggleFollowCopyWithImpl<_ToggleFollow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult toggleFollow(
            String userId, UserDomain currentUser, bool isFollowing),
  }) {
    assert(toggleFollow != null);
    return toggleFollow(userId, currentUser, isFollowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult toggleFollow(
        String userId, UserDomain currentUser, bool isFollowing),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFollow != null) {
      return toggleFollow(userId, currentUser, isFollowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult toggleFollow(_ToggleFollow value),
  }) {
    assert(toggleFollow != null);
    return toggleFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult toggleFollow(_ToggleFollow value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFollow != null) {
      return toggleFollow(this);
    }
    return orElse();
  }
}

abstract class _ToggleFollow implements FollowActorEvent {
  const factory _ToggleFollow(
      {@required String userId,
      @required UserDomain currentUser,
      @required bool isFollowing}) = _$_ToggleFollow;

  @override
  String get userId;
  @override
  UserDomain get currentUser;
  @override
  bool get isFollowing;
  @override
  _$ToggleFollowCopyWith<_ToggleFollow> get copyWith;
}

/// @nodoc
class _$FollowActorStateTearOff {
  const _$FollowActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _ActionFollowFailure followFailure(FollowFailure failure) {
    return _ActionFollowFailure(
      failure,
    );
  }

// ignore: unused_element
  _FollowSuccess followSuccess({bool isFollowing}) {
    return _FollowSuccess(
      isFollowing: isFollowing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowActorState = _$FollowActorStateTearOff();

/// @nodoc
mixin _$FollowActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult followFailure(FollowFailure failure),
    @required TResult followSuccess(bool isFollowing),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followFailure(FollowFailure failure),
    TResult followSuccess(bool isFollowing),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followFailure(_ActionFollowFailure value),
    @required TResult followSuccess(_FollowSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followFailure(_ActionFollowFailure value),
    TResult followSuccess(_FollowSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FollowActorStateCopyWith<$Res> {
  factory $FollowActorStateCopyWith(
          FollowActorState value, $Res Function(FollowActorState) then) =
      _$FollowActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowActorStateCopyWithImpl<$Res>
    implements $FollowActorStateCopyWith<$Res> {
  _$FollowActorStateCopyWithImpl(this._value, this._then);

  final FollowActorState _value;
  // ignore: unused_field
  final $Res Function(FollowActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
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
    return 'FollowActorState.initial()';
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
    @required TResult actionInProgress(),
    @required TResult followFailure(FollowFailure failure),
    @required TResult followSuccess(bool isFollowing),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followFailure(FollowFailure failure),
    TResult followSuccess(bool isFollowing),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followFailure(_ActionFollowFailure value),
    @required TResult followSuccess(_FollowSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followFailure(_ActionFollowFailure value),
    TResult followSuccess(_FollowSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FollowActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$FollowActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'FollowActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult followFailure(FollowFailure failure),
    @required TResult followSuccess(bool isFollowing),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followFailure(FollowFailure failure),
    TResult followSuccess(bool isFollowing),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followFailure(_ActionFollowFailure value),
    @required TResult followSuccess(_FollowSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followFailure(_ActionFollowFailure value),
    TResult followSuccess(_FollowSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FollowActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$ActionFollowFailureCopyWith<$Res> {
  factory _$ActionFollowFailureCopyWith(_ActionFollowFailure value,
          $Res Function(_ActionFollowFailure) then) =
      __$ActionFollowFailureCopyWithImpl<$Res>;
  $Res call({FollowFailure failure});

  $FollowFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ActionFollowFailureCopyWithImpl<$Res>
    extends _$FollowActorStateCopyWithImpl<$Res>
    implements _$ActionFollowFailureCopyWith<$Res> {
  __$ActionFollowFailureCopyWithImpl(
      _ActionFollowFailure _value, $Res Function(_ActionFollowFailure) _then)
      : super(_value, (v) => _then(v as _ActionFollowFailure));

  @override
  _ActionFollowFailure get _value => super._value as _ActionFollowFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ActionFollowFailure(
      failure == freezed ? _value.failure : failure as FollowFailure,
    ));
  }

  @override
  $FollowFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FollowFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_ActionFollowFailure implements _ActionFollowFailure {
  const _$_ActionFollowFailure(this.failure) : assert(failure != null);

  @override
  final FollowFailure failure;

  @override
  String toString() {
    return 'FollowActorState.followFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFollowFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ActionFollowFailureCopyWith<_ActionFollowFailure> get copyWith =>
      __$ActionFollowFailureCopyWithImpl<_ActionFollowFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult followFailure(FollowFailure failure),
    @required TResult followSuccess(bool isFollowing),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return followFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followFailure(FollowFailure failure),
    TResult followSuccess(bool isFollowing),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followFailure != null) {
      return followFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followFailure(_ActionFollowFailure value),
    @required TResult followSuccess(_FollowSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return followFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followFailure(_ActionFollowFailure value),
    TResult followSuccess(_FollowSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followFailure != null) {
      return followFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFollowFailure implements FollowActorState {
  const factory _ActionFollowFailure(FollowFailure failure) =
      _$_ActionFollowFailure;

  FollowFailure get failure;
  _$ActionFollowFailureCopyWith<_ActionFollowFailure> get copyWith;
}

/// @nodoc
abstract class _$FollowSuccessCopyWith<$Res> {
  factory _$FollowSuccessCopyWith(
          _FollowSuccess value, $Res Function(_FollowSuccess) then) =
      __$FollowSuccessCopyWithImpl<$Res>;
  $Res call({bool isFollowing});
}

/// @nodoc
class __$FollowSuccessCopyWithImpl<$Res>
    extends _$FollowActorStateCopyWithImpl<$Res>
    implements _$FollowSuccessCopyWith<$Res> {
  __$FollowSuccessCopyWithImpl(
      _FollowSuccess _value, $Res Function(_FollowSuccess) _then)
      : super(_value, (v) => _then(v as _FollowSuccess));

  @override
  _FollowSuccess get _value => super._value as _FollowSuccess;

  @override
  $Res call({
    Object isFollowing = freezed,
  }) {
    return _then(_FollowSuccess(
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
class _$_FollowSuccess implements _FollowSuccess {
  const _$_FollowSuccess({this.isFollowing});

  @override
  final bool isFollowing;

  @override
  String toString() {
    return 'FollowActorState.followSuccess(isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowSuccess &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFollowing);

  @override
  _$FollowSuccessCopyWith<_FollowSuccess> get copyWith =>
      __$FollowSuccessCopyWithImpl<_FollowSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult followFailure(FollowFailure failure),
    @required TResult followSuccess(bool isFollowing),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return followSuccess(isFollowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followFailure(FollowFailure failure),
    TResult followSuccess(bool isFollowing),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess(isFollowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followFailure(_ActionFollowFailure value),
    @required TResult followSuccess(_FollowSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followFailure != null);
    assert(followSuccess != null);
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followFailure(_ActionFollowFailure value),
    TResult followSuccess(_FollowSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowSuccess implements FollowActorState {
  const factory _FollowSuccess({bool isFollowing}) = _$_FollowSuccess;

  bool get isFollowing;
  _$FollowSuccessCopyWith<_FollowSuccess> get copyWith;
}
