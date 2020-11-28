// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostActorEventTearOff {
  const _$PostActorEventTearOff();

// ignore: unused_element
  _ToggleLike toggleLike(String ownerId, String postId) {
    return _ToggleLike(
      ownerId,
      postId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostActorEvent = _$PostActorEventTearOff();

/// @nodoc
mixin _$PostActorEvent {
  String get ownerId;
  String get postId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult toggleLike(String ownerId, String postId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult toggleLike(String ownerId, String postId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult toggleLike(_ToggleLike value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult toggleLike(_ToggleLike value),
    @required TResult orElse(),
  });

  $PostActorEventCopyWith<PostActorEvent> get copyWith;
}

/// @nodoc
abstract class $PostActorEventCopyWith<$Res> {
  factory $PostActorEventCopyWith(
          PostActorEvent value, $Res Function(PostActorEvent) then) =
      _$PostActorEventCopyWithImpl<$Res>;
  $Res call({String ownerId, String postId});
}

/// @nodoc
class _$PostActorEventCopyWithImpl<$Res>
    implements $PostActorEventCopyWith<$Res> {
  _$PostActorEventCopyWithImpl(this._value, this._then);

  final PostActorEvent _value;
  // ignore: unused_field
  final $Res Function(PostActorEvent) _then;

  @override
  $Res call({
    Object ownerId = freezed,
    Object postId = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      postId: postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
abstract class _$ToggleLikeCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory _$ToggleLikeCopyWith(
          _ToggleLike value, $Res Function(_ToggleLike) then) =
      __$ToggleLikeCopyWithImpl<$Res>;
  @override
  $Res call({String ownerId, String postId});
}

/// @nodoc
class __$ToggleLikeCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$ToggleLikeCopyWith<$Res> {
  __$ToggleLikeCopyWithImpl(
      _ToggleLike _value, $Res Function(_ToggleLike) _then)
      : super(_value, (v) => _then(v as _ToggleLike));

  @override
  _ToggleLike get _value => super._value as _ToggleLike;

  @override
  $Res call({
    Object ownerId = freezed,
    Object postId = freezed,
  }) {
    return _then(_ToggleLike(
      ownerId == freezed ? _value.ownerId : ownerId as String,
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_ToggleLike implements _ToggleLike {
  const _$_ToggleLike(this.ownerId, this.postId)
      : assert(ownerId != null),
        assert(postId != null);

  @override
  final String ownerId;
  @override
  final String postId;

  @override
  String toString() {
    return 'PostActorEvent.toggleLike(ownerId: $ownerId, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleLike &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(postId);

  @override
  _$ToggleLikeCopyWith<_ToggleLike> get copyWith =>
      __$ToggleLikeCopyWithImpl<_ToggleLike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult toggleLike(String ownerId, String postId),
  }) {
    assert(toggleLike != null);
    return toggleLike(ownerId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult toggleLike(String ownerId, String postId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleLike != null) {
      return toggleLike(ownerId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult toggleLike(_ToggleLike value),
  }) {
    assert(toggleLike != null);
    return toggleLike(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult toggleLike(_ToggleLike value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleLike != null) {
      return toggleLike(this);
    }
    return orElse();
  }
}

abstract class _ToggleLike implements PostActorEvent {
  const factory _ToggleLike(String ownerId, String postId) = _$_ToggleLike;

  @override
  String get ownerId;
  @override
  String get postId;
  @override
  _$ToggleLikeCopyWith<_ToggleLike> get copyWith;
}

/// @nodoc
class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInPorgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _LikeFailure likeFailure(PostFailure failure) {
    return _LikeFailure(
      failure,
    );
  }

// ignore: unused_element
  _LikeSuccess likeSuccess(bool isLike) {
    return _LikeSuccess(
      isLike,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostActorState = _$PostActorStateTearOff();

/// @nodoc
mixin _$PostActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInPorgress(),
    @required TResult likeFailure(PostFailure failure),
    @required TResult likeSuccess(bool isLike),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInPorgress(),
    TResult likeFailure(PostFailure failure),
    TResult likeSuccess(bool isLike),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInPorgress(_ActionInProgress value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult likeSuccess(_LikeSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInPorgress(_ActionInProgress value),
    TResult likeFailure(_LikeFailure value),
    TResult likeSuccess(_LikeSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostActorStateCopyWith<$Res> {
  factory $PostActorStateCopyWith(
          PostActorState value, $Res Function(PostActorState) then) =
      _$PostActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostActorStateCopyWithImpl<$Res>
    implements $PostActorStateCopyWith<$Res> {
  _$PostActorStateCopyWithImpl(this._value, this._then);

  final PostActorState _value;
  // ignore: unused_field
  final $Res Function(PostActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
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
    return 'PostActorState.initial()';
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
    @required TResult actionInPorgress(),
    @required TResult likeFailure(PostFailure failure),
    @required TResult likeSuccess(bool isLike),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInPorgress(),
    TResult likeFailure(PostFailure failure),
    TResult likeSuccess(bool isLike),
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
    @required TResult actionInPorgress(_ActionInProgress value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInPorgress(_ActionInProgress value),
    TResult likeFailure(_LikeFailure value),
    TResult likeSuccess(_LikeSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostActorState {
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
    extends _$PostActorStateCopyWithImpl<$Res>
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
    return 'PostActorState.actionInPorgress()';
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
    @required TResult actionInPorgress(),
    @required TResult likeFailure(PostFailure failure),
    @required TResult likeSuccess(bool isLike),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return actionInPorgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInPorgress(),
    TResult likeFailure(PostFailure failure),
    TResult likeSuccess(bool isLike),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInPorgress != null) {
      return actionInPorgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInPorgress(_ActionInProgress value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return actionInPorgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInPorgress(_ActionInProgress value),
    TResult likeFailure(_LikeFailure value),
    TResult likeSuccess(_LikeSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInPorgress != null) {
      return actionInPorgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements PostActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(
          _LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;
  $Res call({PostFailure failure});

  $PostFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(
      _LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LikeFailure(
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
class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.failure) : assert(failure != null);

  @override
  final PostFailure failure;

  @override
  String toString() {
    return 'PostActorState.likeFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInPorgress(),
    @required TResult likeFailure(PostFailure failure),
    @required TResult likeSuccess(bool isLike),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInPorgress(),
    TResult likeFailure(PostFailure failure),
    TResult likeSuccess(bool isLike),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInPorgress(_ActionInProgress value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInPorgress(_ActionInProgress value),
    TResult likeFailure(_LikeFailure value),
    TResult likeSuccess(_LikeSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements PostActorState {
  const factory _LikeFailure(PostFailure failure) = _$_LikeFailure;

  PostFailure get failure;
  _$LikeFailureCopyWith<_LikeFailure> get copyWith;
}

/// @nodoc
abstract class _$LikeSuccessCopyWith<$Res> {
  factory _$LikeSuccessCopyWith(
          _LikeSuccess value, $Res Function(_LikeSuccess) then) =
      __$LikeSuccessCopyWithImpl<$Res>;
  $Res call({bool isLike});
}

/// @nodoc
class __$LikeSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(
      _LikeSuccess _value, $Res Function(_LikeSuccess) _then)
      : super(_value, (v) => _then(v as _LikeSuccess));

  @override
  _LikeSuccess get _value => super._value as _LikeSuccess;

  @override
  $Res call({
    Object isLike = freezed,
  }) {
    return _then(_LikeSuccess(
      isLike == freezed ? _value.isLike : isLike as bool,
    ));
  }
}

/// @nodoc
class _$_LikeSuccess implements _LikeSuccess {
  const _$_LikeSuccess(this.isLike) : assert(isLike != null);

  @override
  final bool isLike;

  @override
  String toString() {
    return 'PostActorState.likeSuccess(isLike: $isLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeSuccess &&
            (identical(other.isLike, isLike) ||
                const DeepCollectionEquality().equals(other.isLike, isLike)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLike);

  @override
  _$LikeSuccessCopyWith<_LikeSuccess> get copyWith =>
      __$LikeSuccessCopyWithImpl<_LikeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInPorgress(),
    @required TResult likeFailure(PostFailure failure),
    @required TResult likeSuccess(bool isLike),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeSuccess(isLike);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInPorgress(),
    TResult likeFailure(PostFailure failure),
    TResult likeSuccess(bool isLike),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess(isLike);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInPorgress(_ActionInProgress value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInPorgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInPorgress(_ActionInProgress value),
    TResult likeFailure(_LikeFailure value),
    TResult likeSuccess(_LikeSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess(this);
    }
    return orElse();
  }
}

abstract class _LikeSuccess implements PostActorState {
  const factory _LikeSuccess(bool isLike) = _$_LikeSuccess;

  bool get isLike;
  _$LikeSuccessCopyWith<_LikeSuccess> get copyWith;
}
