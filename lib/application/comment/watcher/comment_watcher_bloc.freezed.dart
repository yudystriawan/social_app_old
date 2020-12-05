// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentWatcherEventTearOff {
  const _$CommentWatcherEventTearOff();

// ignore: unused_element
  _WatcheAllStarted watchAllStarted(String postId) {
    return _WatcheAllStarted(
      postId,
    );
  }

// ignore: unused_element
  _CommentReceived commentReceived(
      Either<CommentFailure, List<CommentDomain>> failureOrComments) {
    return _CommentReceived(
      failureOrComments,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentWatcherEvent = _$CommentWatcherEventTearOff();

/// @nodoc
mixin _$CommentWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String postId),
    @required
        TResult commentReceived(
            Either<CommentFailure, List<CommentDomain>> failureOrComments),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String postId),
    TResult commentReceived(
        Either<CommentFailure, List<CommentDomain>> failureOrComments),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatcheAllStarted value),
    @required TResult commentReceived(_CommentReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatcheAllStarted value),
    TResult commentReceived(_CommentReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CommentWatcherEventCopyWith<$Res> {
  factory $CommentWatcherEventCopyWith(
          CommentWatcherEvent value, $Res Function(CommentWatcherEvent) then) =
      _$CommentWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentWatcherEventCopyWithImpl<$Res>
    implements $CommentWatcherEventCopyWith<$Res> {
  _$CommentWatcherEventCopyWithImpl(this._value, this._then);

  final CommentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatcheAllStartedCopyWith<$Res> {
  factory _$WatcheAllStartedCopyWith(
          _WatcheAllStarted value, $Res Function(_WatcheAllStarted) then) =
      __$WatcheAllStartedCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$WatcheAllStartedCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$WatcheAllStartedCopyWith<$Res> {
  __$WatcheAllStartedCopyWithImpl(
      _WatcheAllStarted _value, $Res Function(_WatcheAllStarted) _then)
      : super(_value, (v) => _then(v as _WatcheAllStarted));

  @override
  _WatcheAllStarted get _value => super._value as _WatcheAllStarted;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_WatcheAllStarted(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_WatcheAllStarted implements _WatcheAllStarted {
  const _$_WatcheAllStarted(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'CommentWatcherEvent.watchAllStarted(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatcheAllStarted &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$WatcheAllStartedCopyWith<_WatcheAllStarted> get copyWith =>
      __$WatcheAllStartedCopyWithImpl<_WatcheAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String postId),
    @required
        TResult commentReceived(
            Either<CommentFailure, List<CommentDomain>> failureOrComments),
  }) {
    assert(watchAllStarted != null);
    assert(commentReceived != null);
    return watchAllStarted(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String postId),
    TResult commentReceived(
        Either<CommentFailure, List<CommentDomain>> failureOrComments),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatcheAllStarted value),
    @required TResult commentReceived(_CommentReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(commentReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatcheAllStarted value),
    TResult commentReceived(_CommentReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatcheAllStarted implements CommentWatcherEvent {
  const factory _WatcheAllStarted(String postId) = _$_WatcheAllStarted;

  String get postId;
  _$WatcheAllStartedCopyWith<_WatcheAllStarted> get copyWith;
}

/// @nodoc
abstract class _$CommentReceivedCopyWith<$Res> {
  factory _$CommentReceivedCopyWith(
          _CommentReceived value, $Res Function(_CommentReceived) then) =
      __$CommentReceivedCopyWithImpl<$Res>;
  $Res call({Either<CommentFailure, List<CommentDomain>> failureOrComments});
}

/// @nodoc
class __$CommentReceivedCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$CommentReceivedCopyWith<$Res> {
  __$CommentReceivedCopyWithImpl(
      _CommentReceived _value, $Res Function(_CommentReceived) _then)
      : super(_value, (v) => _then(v as _CommentReceived));

  @override
  _CommentReceived get _value => super._value as _CommentReceived;

  @override
  $Res call({
    Object failureOrComments = freezed,
  }) {
    return _then(_CommentReceived(
      failureOrComments == freezed
          ? _value.failureOrComments
          : failureOrComments as Either<CommentFailure, List<CommentDomain>>,
    ));
  }
}

/// @nodoc
class _$_CommentReceived implements _CommentReceived {
  const _$_CommentReceived(this.failureOrComments)
      : assert(failureOrComments != null);

  @override
  final Either<CommentFailure, List<CommentDomain>> failureOrComments;

  @override
  String toString() {
    return 'CommentWatcherEvent.commentReceived(failureOrComments: $failureOrComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentReceived &&
            (identical(other.failureOrComments, failureOrComments) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrComments, failureOrComments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrComments);

  @override
  _$CommentReceivedCopyWith<_CommentReceived> get copyWith =>
      __$CommentReceivedCopyWithImpl<_CommentReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String postId),
    @required
        TResult commentReceived(
            Either<CommentFailure, List<CommentDomain>> failureOrComments),
  }) {
    assert(watchAllStarted != null);
    assert(commentReceived != null);
    return commentReceived(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String postId),
    TResult commentReceived(
        Either<CommentFailure, List<CommentDomain>> failureOrComments),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (commentReceived != null) {
      return commentReceived(failureOrComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatcheAllStarted value),
    @required TResult commentReceived(_CommentReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(commentReceived != null);
    return commentReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatcheAllStarted value),
    TResult commentReceived(_CommentReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (commentReceived != null) {
      return commentReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentReceived implements CommentWatcherEvent {
  const factory _CommentReceived(
          Either<CommentFailure, List<CommentDomain>> failureOrComments) =
      _$_CommentReceived;

  Either<CommentFailure, List<CommentDomain>> get failureOrComments;
  _$CommentReceivedCopyWith<_CommentReceived> get copyWith;
}

/// @nodoc
class _$CommentWatcherStateTearOff {
  const _$CommentWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<CommentDomain> comments) {
    return _LoadSuccess(
      comments,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(CommentFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentWatcherState = _$CommentWatcherStateTearOff();

/// @nodoc
mixin _$CommentWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<CommentDomain> comments),
    @required TResult loadFailure(CommentFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<CommentDomain> comments),
    TResult loadFailure(CommentFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CommentWatcherStateCopyWith<$Res> {
  factory $CommentWatcherStateCopyWith(
          CommentWatcherState value, $Res Function(CommentWatcherState) then) =
      _$CommentWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentWatcherStateCopyWithImpl<$Res>
    implements $CommentWatcherStateCopyWith<$Res> {
  _$CommentWatcherStateCopyWithImpl(this._value, this._then);

  final CommentWatcherState _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
    return 'CommentWatcherState.initial()';
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
    @required TResult loadSuccess(List<CommentDomain> comments),
    @required TResult loadFailure(CommentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<CommentDomain> comments),
    TResult loadFailure(CommentFailure failure),
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
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentWatcherState {
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
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
    return 'CommentWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(List<CommentDomain> comments),
    @required TResult loadFailure(CommentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<CommentDomain> comments),
    TResult loadFailure(CommentFailure failure),
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
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CommentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<CommentDomain> comments});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_LoadSuccess(
      comments == freezed ? _value.comments : comments as List<CommentDomain>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.comments) : assert(comments != null);

  @override
  final List<CommentDomain> comments;

  @override
  String toString() {
    return 'CommentWatcherState.loadSuccess(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<CommentDomain> comments),
    @required TResult loadFailure(CommentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<CommentDomain> comments),
    TResult loadFailure(CommentFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CommentWatcherState {
  const factory _LoadSuccess(List<CommentDomain> comments) = _$_LoadSuccess;

  List<CommentDomain> get comments;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CommentFailure failure});

  $CommentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as CommentFailure,
    ));
  }

  @override
  $CommentFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CommentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final CommentFailure failure;

  @override
  String toString() {
    return 'CommentWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(List<CommentDomain> comments),
    @required TResult loadFailure(CommentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<CommentDomain> comments),
    TResult loadFailure(CommentFailure failure),
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
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CommentWatcherState {
  const factory _LoadFailure(CommentFailure failure) = _$_LoadFailure;

  CommentFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
