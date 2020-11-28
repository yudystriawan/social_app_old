import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_footer_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_header_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_image_widget.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(post: post),
        PostImage(post: post),
        const SizedBox(height: 8),
        PostFooter(post: post),
      ],
    );
  }
}
