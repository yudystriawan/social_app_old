// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'follower_count_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowerCountWatcherEventTearOff {
  const _$FollowerCountWatcherEventTearOff();

// ignore: unused_element
  _Started watchFollowerStarted(String userId) {
    return _Started(
      userId,
    );
  }

// ignore: unused_element
  _CountReceived countReceived(Either<FollowFailure, int> failureOrCount) {
    return _CountReceived(
      failureOrCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowerCountWatcherEvent = _$FollowerCountWatcherEventTearOff();

/// @nodoc
mixin _$FollowerCountWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchFollowerStarted(String userId),
    @required TResult countReceived(Either<FollowFailure, int> failureOrCount),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchFollowerStarted(String userId),
    TResult countReceived(Either<FollowFailure, int> failureOrCount),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchFollowerStarted(_Started value),
    @required TResult countReceived(_CountReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchFollowerStarted(_Started value),
    TResult countReceived(_CountReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FollowerCountWatcherEventCopyWith<$Res> {
  factory $FollowerCountWatcherEventCopyWith(FollowerCountWatcherEvent value,
          $Res Function(FollowerCountWatcherEvent) then) =
      _$FollowerCountWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowerCountWatcherEventCopyWithImpl<$Res>
    implements $FollowerCountWatcherEventCopyWith<$Res> {
  _$FollowerCountWatcherEventCopyWithImpl(this._value, this._then);

  final FollowerCountWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(FollowerCountWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$FollowerCountWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_Started(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'FollowerCountWatcherEvent.watchFollowerStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchFollowerStarted(String userId),
    @required TResult countReceived(Either<FollowFailure, int> failureOrCount),
  }) {
    assert(watchFollowerStarted != null);
    assert(countReceived != null);
    return watchFollowerStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchFollowerStarted(String userId),
    TResult countReceived(Either<FollowFailure, int> failureOrCount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowerStarted != null) {
      return watchFollowerStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchFollowerStarted(_Started value),
    @required TResult countReceived(_CountReceived value),
  }) {
    assert(watchFollowerStarted != null);
    assert(countReceived != null);
    return watchFollowerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchFollowerStarted(_Started value),
    TResult countReceived(_CountReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowerStarted != null) {
      return watchFollowerStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements FollowerCountWatcherEvent {
  const factory _Started(String userId) = _$_Started;

  String get userId;
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$CountReceivedCopyWith<$Res> {
  factory _$CountReceivedCopyWith(
          _CountReceived value, $Res Function(_CountReceived) then) =
      __$CountReceivedCopyWithImpl<$Res>;
  $Res call({Either<FollowFailure, int> failureOrCount});
}

/// @nodoc
class __$CountReceivedCopyWithImpl<$Res>
    extends _$FollowerCountWatcherEventCopyWithImpl<$Res>
    implements _$CountReceivedCopyWith<$Res> {
  __$CountReceivedCopyWithImpl(
      _CountReceived _value, $Res Function(_CountReceived) _then)
      : super(_value, (v) => _then(v as _CountReceived));

  @override
  _CountReceived get _value => super._value as _CountReceived;

  @override
  $Res call({
    Object failureOrCount = freezed,
  }) {
    return _then(_CountReceived(
      failureOrCount == freezed
          ? _value.failureOrCount
          : failureOrCount as Either<FollowFailure, int>,
    ));
  }
}

/// @nodoc
class _$_CountReceived implements _CountReceived {
  const _$_CountReceived(this.failureOrCount) : assert(failureOrCount != null);

  @override
  final Either<FollowFailure, int> failureOrCount;

  @override
  String toString() {
    return 'FollowerCountWatcherEvent.countReceived(failureOrCount: $failureOrCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountReceived &&
            (identical(other.failureOrCount, failureOrCount) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCount, failureOrCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCount);

  @override
  _$CountReceivedCopyWith<_CountReceived> get copyWith =>
      __$CountReceivedCopyWithImpl<_CountReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchFollowerStarted(String userId),
    @required TResult countReceived(Either<FollowFailure, int> failureOrCount),
  }) {
    assert(watchFollowerStarted != null);
    assert(countReceived != null);
    return countReceived(failureOrCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchFollowerStarted(String userId),
    TResult countReceived(Either<FollowFailure, int> failureOrCount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countReceived != null) {
      return countReceived(failureOrCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchFollowerStarted(_Started value),
    @required TResult countReceived(_CountReceived value),
  }) {
    assert(watchFollowerStarted != null);
    assert(countReceived != null);
    return countReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchFollowerStarted(_Started value),
    TResult countReceived(_CountReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countReceived != null) {
      return countReceived(this);
    }
    return orElse();
  }
}

abstract class _CountReceived implements FollowerCountWatcherEvent {
  const factory _CountReceived(Either<FollowFailure, int> failureOrCount) =
      _$_CountReceived;

  Either<FollowFailure, int> get failureOrCount;
  _$CountReceivedCopyWith<_CountReceived> get copyWith;
}

/// @nodoc
class _$FollowerCountWatcherStateTearOff {
  const _$FollowerCountWatcherStateTearOff();

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
  _LoadSuccess loadSuccess(int count) {
    return _LoadSuccess(
      count,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowerCountWatcherState = _$FollowerCountWatcherStateTearOff();

/// @nodoc
mixin _$FollowerCountWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(int count),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(int count),
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
abstract class $FollowerCountWatcherStateCopyWith<$Res> {
  factory $FollowerCountWatcherStateCopyWith(FollowerCountWatcherState value,
          $Res Function(FollowerCountWatcherState) then) =
      _$FollowerCountWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowerCountWatcherStateCopyWithImpl<$Res>
    implements $FollowerCountWatcherStateCopyWith<$Res> {
  _$FollowerCountWatcherStateCopyWithImpl(this._value, this._then);

  final FollowerCountWatcherState _value;
  // ignore: unused_field
  final $Res Function(FollowerCountWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FollowerCountWatcherStateCopyWithImpl<$Res>
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
    return 'FollowerCountWatcherState.initial()';
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
    @required TResult loadSuccess(int count),
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
    TResult loadSuccess(int count),
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

abstract class _Initial implements FollowerCountWatcherState {
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
    extends _$FollowerCountWatcherStateCopyWithImpl<$Res>
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
    return 'FollowerCountWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(int count),
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
    TResult loadSuccess(int count),
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

abstract class _LoadInProgress implements FollowerCountWatcherState {
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
    extends _$FollowerCountWatcherStateCopyWithImpl<$Res>
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
    return 'FollowerCountWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(int count),
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
    TResult loadSuccess(int count),
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

abstract class _LoadFailure implements FollowerCountWatcherState {
  const factory _LoadFailure(FollowFailure failure) = _$_LoadFailure;

  FollowFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FollowerCountWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_LoadSuccess(
      count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.count) : assert(count != null);

  @override
  final int count;

  @override
  String toString() {
    return 'FollowerCountWatcherState.loadSuccess(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(FollowFailure failure),
    @required TResult loadSuccess(int count),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(FollowFailure failure),
    TResult loadSuccess(int count),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(count);
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

abstract class _LoadSuccess implements FollowerCountWatcherState {
  const factory _LoadSuccess(int count) = _$_LoadSuccess;

  int get count;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}
