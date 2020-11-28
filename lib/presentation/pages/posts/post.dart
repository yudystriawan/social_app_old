import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/common/widgets/my_cached_network_image.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_footer_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_header_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_image_widget.dart';

class ListViewPost extends StatelessWidget {
  const ListViewPost({
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

class GridViewPost extends StatelessWidget {
  const GridViewPost({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FlushbarHelper.createInformation(message: 'Showing post')
          .show(context),
      child: MyCachedNetworkImage(
        imageUrl: post.imageUrl.getOrCrash(),
      ),
    );
  }
}
