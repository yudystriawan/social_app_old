import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/post/by_user_wathcer/post_by_user_watcher_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_header_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_posts_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key key,
    @required this.user,
    @required this.posts,
  }) : super(key: key);

  final UserDomain user;
  final List<PostDomain> posts;

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
        child: Column(
          children: [
            ProfileHeader(
              user: user,
              posts: posts,
            ),
            const Divider(height: 12),
            Expanded(
              child: ProfilePosts(posts: posts),
            ),
          ],
        ),
      ),
    );
  }
}
