import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/feed/watcher/feed_watcher_bloc.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';
import 'package:my_social_app/presentation/pages/feed/widgets/feed_item_widget.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserDomain user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FeedWatcherBloc>()
        ..add(FeedWatcherEvent.watchAllStarted(user.id.getOrCrash())),
      child: Scaffold(
        appBar: getAppBar(context: context, title: 'Feed'),
        body: BlocBuilder<FeedWatcherBloc, FeedWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) => state.feeds.isEmpty
                  ? const Center(
                      child: Text('No activity feed.'),
                    )
                  : ListView.builder(
                      itemCount: state.feeds.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FeedItem(feed: state.feeds[index]);
                      },
                    ),
              loadFailure: (state) => Center(
                child: Text(
                  state.maybeMap(
                    orElse: () => 'something went wrong.',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
