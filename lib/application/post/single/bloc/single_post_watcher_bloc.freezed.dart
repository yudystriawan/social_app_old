// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'single_post_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SinglePostWatcherEventTearOff {
  const _$SinglePostWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(
      {@required String userId, @required String postId}) {
    return _WatchAllStarted(
      userId: userId,
      postId: postId,
    );
  }

// ignore: unused_element
  _PostReceived postsReceived(Either<PostFailure, PostDomain> failureOrPost) {
    return _PostReceived(
      failureOrPost,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SinglePostWatcherEvent = _$SinglePostWatcherEventTearOff();

/// @nodoc
mixin _$SinglePostWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId, String postId),
    @required
        TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId, String postId),
    TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SinglePostWatcherEventCopyWith<$Res> {
  factory $SinglePostWatcherEventCopyWith(SinglePostWatcherEvent value,
          $Res Function(SinglePostWatcherEvent) then) =
      _$SinglePostWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SinglePostWatcherEventCopyWithImpl<$Res>
    implements $SinglePostWatcherEventCopyWith<$Res> {
  _$SinglePostWatcherEventCopyWithImpl(this._value, this._then);

  final SinglePostWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SinglePostWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String userId, String postId});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$SinglePostWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object userId = freezed,
    Object postId = freezed,
  }) {
    return _then(_WatchAllStarted(
      userId: userId == freezed ? _value.userId : userId as String,
      postId: postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted({@required this.userId, @required this.postId})
      : assert(userId != null),
        assert(postId != null);

  @override
  final String userId;
  @override
  final String postId;

  @override
  String toString() {
    return 'SinglePostWatcherEvent.watchAllStarted(userId: $userId, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(postId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId, String postId),
    @required
        TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return watchAllStarted(userId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId, String postId),
    TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(userId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements SinglePostWatcherEvent {
  const factory _WatchAllStarted(
      {@required String userId, @required String postId}) = _$_WatchAllStarted;

  String get userId;
  String get postId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$PostReceivedCopyWith<$Res> {
  factory _$PostReceivedCopyWith(
          _PostReceived value, $Res Function(_PostReceived) then) =
      __$PostReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, PostDomain> failureOrPost});
}

/// @nodoc
class __$PostReceivedCopyWithImpl<$Res>
    extends _$SinglePostWatcherEventCopyWithImpl<$Res>
    implements _$PostReceivedCopyWith<$Res> {
  __$PostReceivedCopyWithImpl(
      _PostReceived _value, $Res Function(_PostReceived) _then)
      : super(_value, (v) => _then(v as _PostReceived));

  @override
  _PostReceived get _value => super._value as _PostReceived;

  @override
  $Res call({
    Object failureOrPost = freezed,
  }) {
    return _then(_PostReceived(
      failureOrPost == freezed
          ? _value.failureOrPost
          : failureOrPost as Either<PostFailure, PostDomain>,
    ));
  }
}

/// @nodoc
class _$_PostReceived implements _PostReceived {
  const _$_PostReceived(this.failureOrPost) : assert(failureOrPost != null);

  @override
  final Either<PostFailure, PostDomain> failureOrPost;

  @override
  String toString() {
    return 'SinglePostWatcherEvent.postsReceived(failureOrPost: $failureOrPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostReceived &&
            (identical(other.failureOrPost, failureOrPost) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPost, failureOrPost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrPost);

  @override
  _$PostReceivedCopyWith<_PostReceived> get copyWith =>
      __$PostReceivedCopyWithImpl<_PostReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(String userId, String postId),
    @required
        TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return postsReceived(failureOrPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(String userId, String postId),
    TResult postsReceived(Either<PostFailure, PostDomain> failureOrPost),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(failureOrPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult postsReceived(_PostReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(postsReceived != null);
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult postsReceived(_PostReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostReceived implements SinglePostWatcherEvent {
  const factory _PostReceived(Either<PostFailure, PostDomain> failureOrPost) =
      _$_PostReceived;

  Either<PostFailure, PostDomain> get failureOrPost;
  _$PostReceivedCopyWith<_PostReceived> get copyWith;
}

/// @nodoc
class _$SinglePostWatcherStateTearOff {
  const _$SinglePostWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(PostDomain post) {
    return _LoadSuccess(
      post,
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
const $SinglePostWatcherState = _$SinglePostWatcherStateTearOff();

/// @nodoc
mixin _$SinglePostWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(PostDomain post),
    @required TResult loadFailure(PostFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(PostDomain post),
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
abstract class $SinglePostWatcherStateCopyWith<$Res> {
  factory $SinglePostWatcherStateCopyWith(SinglePostWatcherState value,
          $Res Function(SinglePostWatcherState) then) =
      _$SinglePostWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SinglePostWatcherStateCopyWithImpl<$Res>
    implements $SinglePostWatcherStateCopyWith<$Res> {
  _$SinglePostWatcherStateCopyWithImpl(this._value, this._then);

  final SinglePostWatcherState _value;
  // ignore: unused_field
  final $Res Function(SinglePostWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SinglePostWatcherStateCopyWithImpl<$Res>
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
    return 'SinglePostWatcherState.initial()';
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
    @required TResult loadSuccess(PostDomain post),
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
    TResult loadSuccess(PostDomain post),
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

abstract class _Initial implements SinglePostWatcherState {
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
    extends _$SinglePostWatcherStateCopyWithImpl<$Res>
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
    return 'SinglePostWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(PostDomain post),
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
    TResult loadSuccess(PostDomain post),
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

abstract class _LoadInProgress implements SinglePostWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({PostDomain post});

  $PostDomainCopyWith<$Res> get post;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$SinglePostWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_LoadSuccess(
      post == freezed ? _value.post : post as PostDomain,
    ));
  }

  @override
  $PostDomainCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostDomainCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.post) : assert(post != null);

  @override
  final PostDomain post;

  @override
  String toString() {
    return 'SinglePostWatcherState.loadSuccess(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(PostDomain post),
    @required TResult loadFailure(PostFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(PostDomain post),
    TResult loadFailure(PostFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(post);
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

abstract class _LoadSuccess implements SinglePostWatcherState {
  const factory _LoadSuccess(PostDomain post) = _$_LoadSuccess;

  PostDomain get post;
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
    extends _$SinglePostWatcherStateCopyWithImpl<$Res>
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
    return 'SinglePostWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(PostDomain post),
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
    TResult loadSuccess(PostDomain post),
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

abstract class _LoadFailure implements SinglePostWatcherState {
  const factory _LoadFailure(PostFailure failure) = _$_LoadFailure;

  PostFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
