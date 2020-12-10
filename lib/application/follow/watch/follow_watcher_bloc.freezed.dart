// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'follow_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowWatcherEventTearOff {
  const _$FollowWatcherEventTearOff();

// ignore: unused_element
  _WatchUserFollowing watchUserFollowing(String userId) {
    return _WatchUserFollowing(
      userId,
    );
  }

// ignore: unused_element
  _DataReceived dataReceived(Either<FollowFailure, bool> failureOrData) {
    return _DataReceived(
      failureOrData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowWatcherEvent = _$FollowWatcherEventTearOff();

/// @nodoc
mixin _$FollowWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUserFollowing(String userId),
    @required TResult dataReceived(Either<FollowFailure, bool> failureOrData),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUserFollowing(String userId),
    TResult dataReceived(Either<FollowFailure, bool> failureOrData),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUserFollowing(_WatchUserFollowing value),
    @required TResult dataReceived(_DataReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUserFollowing(_WatchUserFollowing value),
    TResult dataReceived(_DataReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FollowWatcherEventCopyWith<$Res> {
  factory $FollowWatcherEventCopyWith(
          FollowWatcherEvent value, $Res Function(FollowWatcherEvent) then) =
      _$FollowWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowWatcherEventCopyWithImpl<$Res>
    implements $FollowWatcherEventCopyWith<$Res> {
  _$FollowWatcherEventCopyWithImpl(this._value, this._then);

  final FollowWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(FollowWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchUserFollowingCopyWith<$Res> {
  factory _$WatchUserFollowingCopyWith(
          _WatchUserFollowing value, $Res Function(_WatchUserFollowing) then) =
      __$WatchUserFollowingCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$WatchUserFollowingCopyWithImpl<$Res>
    extends _$FollowWatcherEventCopyWithImpl<$Res>
    implements _$WatchUserFollowingCopyWith<$Res> {
  __$WatchUserFollowingCopyWithImpl(
      _WatchUserFollowing _value, $Res Function(_WatchUserFollowing) _then)
      : super(_value, (v) => _then(v as _WatchUserFollowing));

  @override
  _WatchUserFollowing get _value => super._value as _WatchUserFollowing;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_WatchUserFollowing(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_WatchUserFollowing implements _WatchUserFollowing {
  const _$_WatchUserFollowing(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'FollowWatcherEvent.watchUserFollowing(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchUserFollowing &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  _$WatchUserFollowingCopyWith<_WatchUserFollowing> get copyWith =>
      __$WatchUserFollowingCopyWithImpl<_WatchUserFollowing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUserFollowing(String userId),
    @required TResult dataReceived(Either<FollowFailure, bool> failureOrData),
  }) {
    assert(watchUserFollowing != null);
    assert(dataReceived != null);
    return watchUserFollowing(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUserFollowing(String userId),
    TResult dataReceived(Either<FollowFailure, bool> failureOrData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUserFollowing != null) {
      return watchUserFollowing(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUserFollowing(_WatchUserFollowing value),
    @required TResult dataReceived(_DataReceived value),
  }) {
    assert(watchUserFollowing != null);
    assert(dataReceived != null);
    return watchUserFollowing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUserFollowing(_WatchUserFollowing value),
    TResult dataReceived(_DataReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUserFollowing != null) {
      return watchUserFollowing(this);
    }
    return orElse();
  }
}

abstract class _WatchUserFollowing implements FollowWatcherEvent {
  const factory _WatchUserFollowing(String userId) = _$_WatchUserFollowing;

  String get userId;
  _$WatchUserFollowingCopyWith<_WatchUserFollowing> get copyWith;
}

/// @nodoc
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call({Either<FollowFailure, bool> failureOrData});
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res>
    extends _$FollowWatcherEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object failureOrData = freezed,
  }) {
    return _then(_DataReceived(
      failureOrData == freezed
          ? _value.failureOrData
          : failureOrData as Either<FollowFailure, bool>,
    ));
  }
}

/// @nodoc
class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(this.failureOrData) : assert(failureOrData != null);

  @override
  final Either<FollowFailure, bool> failureOrData;

  @override
  String toString() {
    return 'FollowWatcherEvent.dataReceived(failureOrData: $failureOrData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataReceived &&
            (identical(other.failureOrData, failureOrData) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrData, failureOrData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrData);

  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUserFollowing(String userId),
    @required TResult dataReceived(Either<FollowFailure, bool> failureOrData),
  }) {
    assert(watchUserFollowing != null);
    assert(dataReceived != null);
    return dataReceived(failureOrData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUserFollowing(String userId),
    TResult dataReceived(Either<FollowFailure, bool> failureOrData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dataReceived != null) {
      return dataReceived(failureOrData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUserFollowing(_WatchUserFollowing value),
    @required TResult dataReceived(_DataReceived value),
  }) {
    assert(watchUserFollowing != null);
    assert(dataReceived != null);
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUserFollowing(_WatchUserFollowing value),
    TResult dataReceived(_DataReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements FollowWatcherEvent {
  const factory _DataReceived(Either<FollowFailure, bool> failureOrData) =
      _$_DataReceived;

  Either<FollowFailure, bool> get failureOrData;
  _$DataReceivedCopyWith<_DataReceived> get copyWith;
}

/// @nodoc
class _$FollowWatcherStateTearOff {
  const _$FollowWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadFailure loadFailure(FollowFailure failure) {
    return _LoadFailure(
      failure,
    );
  }

// ignore: unused_element
  _LoadSuccess loadSuccess({bool isFollowing}) {
    return _LoadSuccess(
      isFollowing: isFollowing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowWatcherState = _$FollowWatcherStateTearOff();

/// @nodoc
mixin _$FollowWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(bool isFollowing),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(bool isFollowing),
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
abstract class $FollowWatcherStateCopyWith<$Res> {
  factory $FollowWatcherStateCopyWith(
          FollowWatcherState value, $Res Function(FollowWatcherState) then) =
      _$FollowWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowWatcherStateCopyWithImpl<$Res>
    implements $FollowWatcherStateCopyWith<$Res> {
  _$FollowWatcherStateCopyWithImpl(this._value, this._then);

  final FollowWatcherState _value;
  // ignore: unused_field
  final $Res Function(FollowWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FollowWatcherStateCopyWithImpl<$Res>
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
    return 'FollowWatcherState.initial()';
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
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(bool isFollowing),
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
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(bool isFollowing),
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

abstract class _Initial implements FollowWatcherState {
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
    extends _$FollowWatcherStateCopyWithImpl<$Res>
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
    return 'FollowWatcherState.loadInProgress()';
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
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(bool isFollowing),
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
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(bool isFollowing),
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

abstract class _LoadInProgress implements FollowWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FollowFailure failure});

  $FollowFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FollowWatcherStateCopyWithImpl<$Res>
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final FollowFailure failure;

  @override
  String toString() {
    return 'FollowWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(bool isFollowing),
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
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(bool isFollowing),
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

abstract class _LoadFailure implements FollowWatcherState {
  const factory _LoadFailure(FollowFailure failure) = _$_LoadFailure;

  FollowFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({bool isFollowing});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FollowWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object isFollowing = freezed,
  }) {
    return _then(_LoadSuccess(
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({this.isFollowing});

  @override
  final bool isFollowing;

  @override
  String toString() {
    return 'FollowWatcherState.loadSuccess(isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFollowing);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(bool isFollowing),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(isFollowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(bool isFollowing),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(isFollowing);
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

abstract class _LoadSuccess implements FollowWatcherState {
  const factory _LoadSuccess({bool isFollowing}) = _$_LoadSuccess;

  bool get isFollowing;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}
