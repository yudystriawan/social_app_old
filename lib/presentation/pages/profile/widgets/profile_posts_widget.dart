import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/pages/posts/post.dart';

class ProfileListViewPosts extends StatelessWidget {
  const ProfileListViewPosts({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<PostDomain> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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

class ProfileGridViewPost extends StatelessWidget {
  const ProfileGridViewPost({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<PostDomain> posts;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1.5,
      crossAxisSpacing: 1.5,
      children: List.generate(
        posts.length,
        (index) => GridPost(
          post: posts[index],
        ),
      ),
    );
  }
}
