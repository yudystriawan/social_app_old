import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/follow/actor/follow_actor_bloc.dart';
import 'package:my_social_app/application/follow/watch/follow_watcher_bloc.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/outline_button_profile_widget.dart';

class ButtonFollow extends StatelessWidget {
  const ButtonFollow({
    Key key,
    @required this.currentUser,
    @required this.userId,
  }) : super(key: key);

  final UserDomain currentUser;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowWatcherBloc, FollowWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadFailure: (_) => Container(),
          loadSuccess: (state) => OutlineButtonProfile(
            onPressed: () => context
                .read<FollowActorBloc>()
                .add(FollowActorEvent.toggleFollow(
                  userId: userId,
                  currentUser: currentUser,
                  isFollowing: state.isFollowing,
                )),
            label: state.isFollowing ? 'Unfollow' : 'Follow',
          ),
        );
      },
    );
  }
}
