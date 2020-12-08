import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/post/single/bloc/single_post_watcher_bloc.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/injection.dart';

import '../post.dart';

class PostDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const PostDetailPage({
    Key key,
    @required this.userId,
    @required this.postId,
  }) : super(key: key);

  final StringSingleLine userId;
  final StringSingleLine postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<SinglePostWatcherBloc, SinglePostWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadSuccess: (state) => SingleChildScrollView(
                  child: Post(
                    post: state.post,
                  ),
                ),
                loadFailure: (state) => Center(
                  child: Text(
                    state.maybeMap(orElse: () => 'something went wrong.'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SinglePostWatcherBloc>()
        ..add(SinglePostWatcherEvent.watchAllStarted(
          userId: userId.getOrCrash(),
          postId: postId.getOrCrash(),
        )),
      child: this,
    );
  }
}
