// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timeline_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimelineWatcherEventTearOff {
  const _$TimelineWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(String userId) {
    return _WatchAllStarted(
      userId,
    );
  }

// ignore: unused_element
  _PostsReceived postsReceived(
      Either<PostFailure, List<PostDomain>> failureOrPosts) {
    return _PostsReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimelineWatcherEvent = _$TimelineWatcherEventTearOff();

/// @nodoc
mixin _$TimelineWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId),
    @required
        TResult postsReceived(
            Either<PostFailure, List<PostDomain>> failureOrPosts),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId),
    TResult postsReceived(Either<PostFailure, List<PostDomain>> failureOrPosts),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TimelineWatcherEventCopyWith<$Res> {
  factory $TimelineWatcherEventCopyWith(TimelineWatcherEvent value,
          $Res Function(TimelineWatcherEvent) then) =
      _$TimelineWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimelineWatcherEventCopyWithImpl<$Res>
    implements $TimelineWatcherEventCopyWith<$Res> {
  _$TimelineWatcherEventCopyWithImpl(this._value, this._then);

  final TimelineWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TimelineWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$TimelineWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_WatchAllStarted(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'TimelineWatcherEvent.watchAllStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId),
    @required
        TResult postsReceived(
            Either<PostFailure, List<PostDomain>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return watchAllStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId),
    TResult postsReceived(Either<PostFailure, List<PostDomain>> failureOrPosts),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TimelineWatcherEvent {
  const factory _WatchAllStarted(String userId) = _$_WatchAllStarted;

  String get userId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$PostsReceivedCopyWith<$Res> {
  factory _$PostsReceivedCopyWith(
          _PostsReceived value, $Res Function(_PostsReceived) then) =
      __$PostsReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, List<PostDomain>> failureOrPosts});
}

/// @nodoc
class __$PostsReceivedCopyWithImpl<$Res>
    extends _$TimelineWatcherEventCopyWithImpl<$Res>
    implements _$PostsReceivedCopyWith<$Res> {
  __$PostsReceivedCopyWithImpl(
      _PostsReceived _value, $Res Function(_PostsReceived) _then)
      : super(_value, (v) => _then(v as _PostsReceived));

  @override
  _PostsReceived get _value => super._value as _PostsReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_PostsReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, List<PostDomain>>,
    ));
  }
}

/// @nodoc
class _$_PostsReceived implements _PostsReceived {
  const _$_PostsReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, List<PostDomain>> failureOrPosts;

  @override
  String toString() {
    return 'TimelineWatcherEvent.postsReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith =>
      __$PostsReceivedCopyWithImpl<_PostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId),
    @required
        TResult postsReceived(
            Either<PostFailure, List<PostDomain>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return postsReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId),
    TResult postsReceived(Either<PostFailure, List<PostDomain>> failureOrPosts),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostsReceived implements TimelineWatcherEvent {
  const factory _PostsReceived(
      Either<PostFailure, List<PostDomain>> failureOrPosts) = _$_PostsReceived;

  Either<PostFailure, List<PostDomain>> get failureOrPosts;
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith;
}

/// @nodoc
class _$TimelineWatcherStateTearOff {
  const _$TimelineWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<PostDomain> posts) {
    return _LoadSuccess(
      posts,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(PostFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimelineWatcherState = _$TimelineWatcherStateTearOff();

/// @nodoc
mixin _$TimelineWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PostDomain> posts),
    @required TResult loadFailure(PostFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PostDomain> posts),
    TResult loadFailure(PostFailure failure),
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
abstract class $TimelineWatcherStateCopyWith<$Res> {
  factory $TimelineWatcherStateCopyWith(TimelineWatcherState value,
          $Res Function(TimelineWatcherState) then) =
      _$TimelineWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimelineWatcherStateCopyWithImpl<$Res>
    implements $TimelineWatcherStateCopyWith<$Res> {
  _$TimelineWatcherStateCopyWithImpl(this._value, this._then);

  final TimelineWatcherState _value;
  // ignore: unused_field
  final $Res Function(TimelineWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TimelineWatcherStateCopyWithImpl<$Res>
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
    return 'TimelineWatcherState.initial()';
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
    @required TResult loadSuccess(List<PostDomain> posts),
    @required TResult loadFailure(PostFailure failure),
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
    TResult loadSuccess(List<PostDomain> posts),
    TResult loadFailure(PostFailure failure),
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

abstract class _Initial implements TimelineWatcherState {
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
    extends _$TimelineWatcherStateCopyWithImpl<$Res>
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
    return 'TimelineWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(List<PostDomain> posts),
    @required TResult loadFailure(PostFailure failure),
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
    TResult loadSuccess(List<PostDomain> posts),
    TResult loadFailure(PostFailure failure),
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

abstract class _LoadInProgress implements TimelineWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<PostDomain> posts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TimelineWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_LoadSuccess(
      posts == freezed ? _value.posts : posts as List<PostDomain>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.posts) : assert(posts != null);

  @override
  final List<PostDomain> posts;

  @override
  String toString() {
    return 'TimelineWatcherState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PostDomain> posts),
    @required TResult loadFailure(PostFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PostDomain> posts),
    TResult loadFailure(PostFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(posts);
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

abstract class _LoadSuccess implements TimelineWatcherState {
  const factory _LoadSuccess(List<PostDomain> posts) = _$_LoadSuccess;

  List<PostDomain> get posts;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure failure});

  $PostFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TimelineWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final PostFailure failure;

  @override
  String toString() {
    return 'TimelineWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(List<PostDomain> posts),
    @required TResult loadFailure(PostFailure failure),
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
    TResult loadSuccess(List<PostDomain> posts),
    TResult loadFailure(PostFailure failure),
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

abstract class _LoadFailure implements TimelineWatcherState {
  const factory _LoadFailure(PostFailure failure) = _$_LoadFailure;

  PostFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
