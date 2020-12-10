import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/post/actor/post_actor_bloc.dart';
import 'package:my_social_app/application/user/get_by_id/user_get_by_id_bloc.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/common/widgets/my_cached_network_image.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_footer_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_header_widget.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/post_image_widget.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

import '../../../injection.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PostActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserGetByIdBloc>()
            ..add(UserGetByIdEvent.getUserById(post.userId.getOrCrash())),
        ),
      ],
      child: BlocBuilder<UserGetByIdBloc, UserGetByIdState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => Container(),
            loadSuccess: (state) => Column(
              children: [
                PostHeader(
                  post: post,
                  user: state.user,
                ),
                PostImage(post: post),
                const SizedBox(height: 8),
                PostFooter(post: post),
              ],
            ),
          );
        },
      ),
    );
    // return BlocProvider(
    //   create: (context) => getIt<PostActorBloc>(),
    //   child: Column(
    //     children: [
    //       PostHeader(post: post),
    //       PostImage(post: post),
    //       const SizedBox(height: 8),
    //       PostFooter(post: post),
    //     ],
    //   ),
    // );
  }
}

class GridPost extends StatelessWidget {
  const GridPost({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ExtendedNavigator.of(context).push(
        Routes.postDetailPage,
        arguments: PostDetailPageArguments(
          userId: post.userId,
          postId: StringSingleLine(post.id.getOrCrash()),
        ),
      ),
      child: MyCachedNetworkImage(
        imageUrl: post.imageUrl.getOrCrash(),
      ),
    );
  }
}
