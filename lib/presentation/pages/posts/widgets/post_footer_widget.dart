import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => FlushbarHelper.createInformation(
                message: 'Action like',
              ).show(context),
              child: const Icon(
                Icons.favorite_border,
                size: 28.0,
                color: Colors.pink,
              ),
            ),
            GestureDetector(
              onTap: () => FlushbarHelper.createInformation(
                message: 'Action comment',
              ).show(context),
              child: const Icon(
                Icons.chat,
                size: 28.0,
                color: Colors.blue,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text('${post.countLikes} likes'),
          ],
        ),
      ],
    );
  }
}
