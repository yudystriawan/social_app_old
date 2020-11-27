import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/column_count_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/column_profile_info_widget.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserDomain user;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.grey,
              backgroundImage:
                  CachedNetworkImageProvider(user.photoUrl.getOrCrash()),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ColumnCount(label: 'Posts', count: 0),
                      ColumnCount(label: 'Followers', count: 0),
                      ColumnCount(label: 'Following', count: 0),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 24,
                    child: OutlineButton(
                      onPressed: () => ExtendedNavigator.of(context).push(
                        Routes.editProfilePage,
                        arguments: EditProfilePageArguments(editedUser: user),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      child: const Text('Edit Profile'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ColumnProfileInfo(user: user),
      ],
    );
  }
}
