import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/follow/actor/follow_actor_bloc.dart';
import 'package:my_social_app/application/follow/follower_count/follower_count_watcher_bloc.dart';
import 'package:my_social_app/application/follow/following_count/following_count_watcher_bloc.dart';
import 'package:my_social_app/application/follow/watch/follow_watcher_bloc.dart';
import 'package:my_social_app/application/post/by_user_watcher/post_by_user_watcher_bloc.dart';
import 'package:my_social_app/application/user/get_by_id/user_get_by_id_bloc.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_header_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_posts_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key key,
    @required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    log('USERID ${widget.userId}');
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<PostByUserWatcherBloc>()
              ..add(
                PostByUserWatcherEvent.watchAllStarted(widget.userId),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<UserGetByIdBloc>()
              ..add(UserGetByIdEvent.getUserById(widget.userId)),
          ),
          BlocProvider(
            create: (context) => getIt<FollowWatcherBloc>()
              ..add(FollowWatcherEvent.watchUserFollowing(widget.userId)),
          ),
          BlocProvider(
            create: (context) => getIt<FollowActorBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<FollowerCountWatcherBloc>()
              ..add(FollowerCountWatcherEvent.watchFollowerStarted(
                  widget.userId)),
          ),
          BlocProvider(
            create: (context) => getIt<FollowingCountWatcherBloc>()
              ..add(FollowingCountWatcherEvent.watchFollowingStarted(
                  widget.userId)),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
            actions: [
              IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () =>
                    context.read<AuthBloc>().add(const AuthEvent.signedOut()),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<UserGetByIdBloc, UserGetByIdState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadFailure: (_) => const Center(
                    child: Text('Something went wrong.'),
                  ),
                  loadSuccess: (state) {
                    final user = state.user;
                    return BlocBuilder<PostByUserWatcherBloc,
                        PostByUserWatcherState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (_) => Container(),
                          loadInProgress: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loadSuccess: (state) => NestedScrollView(
                            headerSliverBuilder:
                                (context, innerBoxIsScrolled) => [
                              SliverToBoxAdapter(
                                child: Container(
                                  constraints:
                                      const BoxConstraints(minHeight: 150),
                                  child: ProfileHeader(
                                    user: user,
                                    posts: state.posts,
                                  ),
                                ),
                              ),
                            ],
                            body: Column(
                              children: [
                                TabBar(
                                  controller: _tabController,
                                  tabs: [
                                    Tab(
                                      icon: Icon(
                                        Icons.grid_on,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    Tab(
                                      icon: Icon(
                                        Icons.list,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: state.posts.isEmpty
                                      ? const Center(
                                          child: Text(
                                              'This user does not have any post.'),
                                        )
                                      : TabBarView(
                                          controller: _tabController,
                                          children: [
                                            ProfileGridViewPost(
                                                posts: state.posts),
                                            ProfileListViewPosts(
                                                posts: state.posts),
                                          ],
                                        ),
                                ),
                              ],
                            ),
                          ),
                          loadFailure: (_) => const Center(
                            child: Text('Something went wrong.'),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ));
  }
}
