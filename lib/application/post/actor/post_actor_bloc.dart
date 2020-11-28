import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/i_post_repository.dart';
import 'package:my_social_app/domain/post/post_failure.dart';

part 'post_actor_event.dart';
part 'post_actor_state.dart';
part 'post_actor_bloc.freezed.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  PostActorBloc(this._postRepository) : super(_Initial());

  final IPostRepository _postRepository;

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    yield const PostActorState.actionInPorgress();
    final failureOrSuccess = await _postRepository.toggleLike(
      postId: StringSingleLine(event.postId),
      ownerId: StringSingleLine(event.ownerId),
    );
    yield failureOrSuccess.fold(
      (failure) => PostActorState.likeFailure(failure),
      (isLike) => PostActorState.likeSuccess(isLike),
    );
  }
}
