import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/pages/posts/post.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<PostDomain> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Post(post: posts[index]),
          ),
        );
      },
    );
  }
}
