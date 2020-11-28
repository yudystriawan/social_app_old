import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_header_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_posts_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/toggle_post_orientation_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key key,
    @required this.user,
    @required this.posts,
  }) : super(key: key);

  final UserDomain user;
  final List<PostDomain> posts;

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: ProfileHeader(
                user: widget.user,
                posts: widget.posts,
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
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ProfileListViewPosts(posts: widget.posts),
                    ProfileGridViewPost(posts: widget.posts),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
