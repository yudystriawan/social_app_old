import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
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
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: MultiBlocProvider(
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
          )
        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<PostByUserWatcherBloc, PostByUserWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadSuccess: (state) {
                  final posts = state.posts;
                  return NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      BlocBuilder<UserGetByIdBloc, UserGetByIdState>(
                        builder: (context, state) {
                          return SliverToBoxAdapter(
                              child: Container(
                            constraints: BoxConstraints(minHeight: 150),
                            child: state.map(
                              initial: (_) => Container(),
                              loadInProgress: (_) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              loadFailure: (_) => Container(),
                              loadSuccess: (state) => ProfileHeader(
                                user: state.user,
                                posts: posts,
                              ),
                            ),
                          ));
                        },
                      )
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
                                  child:
                                      Text('This user does not have any post.'),
                                )
                              : TabBarView(
                                  controller: _tabController,
                                  children: [
                                    ProfileGridViewPost(posts: state.posts),
                                    ProfileListViewPosts(posts: state.posts),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  );
                },
                loadFailure: (state) => Text(
                  state.failure.maybeMap(
                    orElse: () => 'Something went wrong.',
                    unexpected: (_) => 'Unexpected.',
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
