import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
    @required this.post,
    @required this.user,
  }) : super(key: key);

  final PostDomain post;
  final UserDomain user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage:
              CachedNetworkImageProvider(user.photoUrl.getOrCrash())),
      title: GestureDetector(
        onTap: () => ExtendedNavigator.of(context).push(Routes.profilePage,
            arguments: ProfilePageArguments(userId: user.id.getOrCrash())),
        child: Text(user.username.getOrCrash()),
      ),
      subtitle: Text(post.location.getOrCrash()),
      trailing: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () => FlushbarHelper.createInformation(
          message: 'Delete post.',
        ).show(context),
      ),
    );
  }
}
