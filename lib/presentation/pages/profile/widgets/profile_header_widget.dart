import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';

import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/button_follow_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/column_count_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/column_profile_info_widget.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/outline_button_profile_widget.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
    @required this.user,
    @required this.posts,
  }) : super(key: key);

  final UserDomain user;
  final List<PostDomain> posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 150),
      child: Center(
        child: Column(
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
                        children: [
                          ColumnCount(label: 'Posts', count: posts.length),
                          const ColumnCount(label: 'Followers', count: 0),
                          const ColumnCount(label: 'Following', count: 0),
                        ],
                      ),
                      const SizedBox(height: 8),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => Container(),
                            authenticated: (state) {
                              if (state.user.id == user.id) {
                                return OutlineButtonProfile(
                                  onPressed: () =>
                                      ExtendedNavigator.of(context).push(
                                    Routes.editProfilePage,
                                    arguments: EditProfilePageArguments(
                                        editedUser: state.user),
                                  ),
                                  label: 'Edit Profile',
                                );
                              } else {
                                return ButtonFollow(
                                  currentUser: state.user,
                                  userId: user.id.getOrCrash(),
                                );
                              }
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ColumnProfileInfo(user: user),
          ],
        ),
      ),
    );
  }
}
