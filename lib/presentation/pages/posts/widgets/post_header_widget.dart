import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/post/actor/post_actor_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/common/my_dialog.dart';
import 'package:my_social_app/presentation/common/widgets/my_popup_menu_item.dart';
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
    return BlocListener<PostActorBloc, PostActorState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          deleteFailure: (_) =>
              FlushbarHelper.createError(message: 'something went wrong.')
                  .show(context),
          deleteSuccess: (_) =>
              FlushbarHelper.createSuccess(message: 'Post deleted')
                  .show(context),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
            backgroundImage:
                CachedNetworkImageProvider(user.photoUrl.getOrCrash())),
        title: GestureDetector(
          onTap: () => ExtendedNavigator.of(context).push(Routes.profilePage,
              arguments: ProfilePageArguments(userId: user.id.getOrCrash())),
          child: Text(user.username.getOrCrash()),
        ),
        subtitle: Text(post.location.getOrCrash()),
        trailing: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              authenticated: (state) {
                if (state.user.id.getOrCrash() == user.id.getOrCrash()) {
                  return PopupMenuButton(
                    onSelected: (value) {
                      if (value != null && value == 'delete') {
                        MyDialog.deletePostConfirmation(context).then((value) {
                          if (value != null && value) {
                            context
                                .read<PostActorBloc>()
                                .add(PostActorEvent.deleted(post));
                          }
                        });
                      }
                    },
                    itemBuilder: (context) {
                      return [
                        MyPopupMenuItem(
                          enabled: false,
                          label: 'Edit',
                          value: 'edit',
                          iconData: Icons.edit,
                          context: context,
                        ),
                        MyPopupMenuItem(
                          label: 'Delete',
                          value: 'delete',
                          iconData: Icons.delete,
                          context: context,
                        ),
                      ];
                    },
                    icon: const Icon(Icons.more_vert),
                  );
                } else {
                  return Container(
                    width: 0,
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
