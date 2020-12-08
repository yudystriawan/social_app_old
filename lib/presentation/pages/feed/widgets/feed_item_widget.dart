import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_social_app/domain/feed/feed.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedItem extends StatelessWidget {
  const FeedItem({
    Key key,
    @required this.feed,
  }) : super(key: key);

  final FeedDomain feed;

  @override
  Widget build(BuildContext context) {
    final textTypeStr = _getTextType(feed);
    final mediaPreviewWidget = _buildMediaPreview(feed, context);
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () =>
              FlushbarHelper.createInformation(message: 'Delete').show(context),
        ),
      ],
      child: ListTile(
        title: GestureDetector(
          onTap: () => ExtendedNavigator.of(context).push(Routes.profilePage,
              arguments:
                  ProfilePageArguments(userId: feed.userId.getOrCrash())),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
              children: [
                TextSpan(
                  text: feed.username.getOrCrash(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' $textTypeStr',
                ),
              ],
            ),
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            feed.userAvatarUrl.getOrCrash(),
          ),
        ),
        subtitle: Text(
          timeago.format(feed.timestamp.toDate()),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: mediaPreviewWidget,
      ),
    );
  }

  String _getTextType(FeedDomain feed) {
    switch (feed.type.getOrCrash()) {
      case 'like':
        return 'liked your post';
      case 'follow':
        return 'is following you';
      case 'comment':
        return 'replied: ${feed.commentBody.getOrCrash()}';
      default:
        return 'error: unknown type';
    }
  }

  Widget _buildMediaPreview(FeedDomain feed, BuildContext context) {
    if (feed.type.getOrCrash() == 'like' ||
        feed.type.getOrCrash() == 'comment') {
      return GestureDetector(
        onTap: () => ExtendedNavigator.of(context).push(
          Routes.postDetailPage,
          arguments: PostDetailPageArguments(
            userId: feed.userId,
            postId: feed.postId,
          ),
        ),
        child: SizedBox(
          width: 50,
          height: 50,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    feed.thumbnailUrl.getOrCrash(),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
