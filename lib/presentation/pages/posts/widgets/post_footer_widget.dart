import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/post/actor/post_actor_bloc.dart';

import 'package:my_social_app/domain/post/post.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
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
            final myUser = state.user;
            return Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      splashRadius: 18,
                      padding: EdgeInsets.zero,
                      icon: buildIconLike(myUser.id.getOrCrash()),
                      onPressed: () => context
                          .read<PostActorBloc>()
                          .add(PostActorEvent.toggleLike(
                            post.userId.getOrCrash(),
                            post.id.getOrCrash(),
                          )),
                    ),
                    IconButton(
                      splashRadius: 18,
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.chat,
                        size: 28.0,
                        color: Colors.blue,
                      ),
                      onPressed: () => FlushbarHelper.createInformation(
                        message: 'Action comment',
                      ).show(context),
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildGetCountLikes(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: '${myUser.username.getOrCrash()} ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: post.body.getOrCrash(),
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        );
      },
    );
  }

  Icon buildIconLike(String myUserId) {
    bool isMyLike = false;

    post.likes.forEach((key, value) {
      if (key.getOrCrash() == myUserId) {
        isMyLike = value;
      }
    });

    return Icon(
      isMyLike ? Icons.favorite : Icons.favorite_border,
      size: 28.0,
      color: Colors.pink,
    );
  }

  Widget buildGetCountLikes() {
    int counter = 0;
    post.likes.forEach((key, value) {
      if (value == true) {
        counter++;
      }
    });
    return Text('$counter Likes');
  }
}