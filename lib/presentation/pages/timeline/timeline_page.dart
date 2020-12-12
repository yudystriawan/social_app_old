import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/post/timeline_watcher/timeline_watcher_bloc.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';
import 'package:my_social_app/presentation/pages/posts/post.dart';
import 'package:my_social_app/presentation/pages/timeline/widgets/user_suggestion_widget.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({
    Key key,
    @required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Timeline'),
      body: BlocProvider(
        create: (context) => getIt<TimelineWatcherBloc>()
          ..add(const TimelineWatcherEvent.watchAllStarted()),
        child: BlocBuilder<TimelineWatcherBloc, TimelineWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) => state.posts.isEmpty
                  ? UserSuggestion(userId: userId)
                  : RefreshIndicator(
                      onRefresh: () async => context
                          .read<TimelineWatcherBloc>()
                          .add(const TimelineWatcherEvent.watchAllStarted()),
                      child: ListView.builder(
                        itemCount: state.posts.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final post = state.posts[index];
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Post(post: post),
                            ),
                          );
                        },
                      ),
                    ),
              loadFailure: (_) => Container(),
            );
          },
        ),
      ),
    );
  }
}
