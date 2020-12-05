import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_social_app/domain/comment/comment.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentUser extends StatelessWidget {
  const CommentUser({
    Key key,
    @required this.comment,
  }) : super(key: key);

  final CommentDomain comment;

  @override
  Widget build(BuildContext context) {
    return comment.timestamp == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListTile(
            title: Text(comment.body.getOrCrash()),
            leading: CircleAvatar(
              backgroundImage:
                  CachedNetworkImageProvider(comment.avatarUrl.getOrCrash()),
            ),
            subtitle: Text(timeago.format(comment.timestamp.toDate())),
          );
  }
}
