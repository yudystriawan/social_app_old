import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          authenticated: (state) {
            final user = state.user;
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(user.photoUrl.getOrCrash())),
              title: GestureDetector(
                onTap: () => FlushbarHelper.createInformation(
                  message: 'Go to user profile.',
                ).show(context),
                child: Text(user.username.getOrCrash()),
              ),
              subtitle: Text(post.location.getOrCrash()),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => FlushbarHelper.createInformation(
                  message: 'Delete post.',
                ).show(context),
              ),
            );
          },
        );
      },
    );
  }
}
