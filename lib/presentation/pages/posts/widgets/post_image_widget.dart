import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/post/actor/post_actor_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/common/widgets/my_cached_network_image.dart';

class PostImage extends StatefulWidget {
  const PostImage({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  _PostImageState createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  bool isLiked;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    animation = Tween(
      begin: 0.8,
      end: 1.4,
    ).animate(CurvedAnimation(
      curve: Curves.elasticOut,
      parent: controller,
    ));

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isLiked = false;
          controller.reset();
        });
      }
    });

    isLiked = false;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        context.read<PostActorBloc>().add(PostActorEvent.toggleLike(
              widget.post.userId.getOrCrash(),
              widget.post.id.getOrCrash(),
            ));
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          MyCachedNetworkImage(
            imageUrl: widget.post.imageUrl.getOrCrash(),
          ),
          BlocListener<PostActorBloc, PostActorState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  likeSuccess: (state) {
                    setState(() {
                      isLiked = state.isLike;
                    });
                  });
            },
            child: buildHeatBeatAnimation(isLiked: isLiked),
          ),
        ],
      ),
    );
  }

  Widget buildHeatBeatAnimation({bool isLiked}) {
    if (isLiked) {
      controller.forward();
      return AnimatedBuilder(
        animation: animation,
        builder: (context, child) => Transform.scale(
          scale: animation.value,
          child: child,
        ),
        child: const Icon(
          Icons.favorite,
          size: 80.0,
          color: Colors.red,
        ),
      );
    } else {
      return Container();
    }
  }
}
