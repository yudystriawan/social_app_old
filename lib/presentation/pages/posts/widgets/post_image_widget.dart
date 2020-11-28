import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => FlushbarHelper.createInformation(
        message: 'Liking post',
      ).show(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(post.imageUrl.getOrCrash()),
        ],
      ),
    );
  }
}
