import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/common/widgets/my_cached_network_image.dart';

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
          MyCachedNetworkImage(
            imageUrl: post.imageUrl.getOrCrash(),
          ),
        ],
      ),
    );
  }
}
