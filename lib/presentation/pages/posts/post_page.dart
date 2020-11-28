import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';

class PostPage extends StatelessWidget {
  const PostPage({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
