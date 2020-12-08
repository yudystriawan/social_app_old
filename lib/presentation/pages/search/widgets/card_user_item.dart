import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class CardUserItem extends StatelessWidget {
  const CardUserItem({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserDomain user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            user.photoUrl.getOrCrash(),
          ),
        ),
        title: Text(user.name.getOrCrash()),
        subtitle: Text(user.username.value.fold((_) => '', (r) => r)),
        onTap: () => ExtendedNavigator.of(context).push(Routes.profilePage,
            arguments: ProfilePageArguments(userId: user.id.getOrCrash())),
      ),
    );
  }
}
