import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/user/get_by_id/user_get_by_id_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserGetByIdBloc>()
        ..add(UserGetByIdEvent.getUserById(post.userId.getOrCrash())),
      child: BlocBuilder<UserGetByIdBloc, UserGetByIdState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Container(),
            loadFailure: (_) => Container(),
            loadSuccess: (state) => ListTile(
              leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      state.user.photoUrl.getOrCrash())),
              title: GestureDetector(
                onTap: () => ExtendedNavigator.of(context).push(
                    Routes.profilePage,
                    arguments: ProfilePageArguments(
                        userId: state.user.id.getOrCrash())),
                child: Text(state.user.username.getOrCrash()),
              ),
              subtitle: Text(post.location.getOrCrash()),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () => FlushbarHelper.createInformation(
                  message: 'Delete post.',
                ).show(context),
              ),
            ),
          );
        },
      ),
    );
  }
}
