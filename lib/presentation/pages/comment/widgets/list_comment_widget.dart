import 'package:flutter/material.dart';

import 'package:my_social_app/domain/comment/comment.dart';
import 'package:my_social_app/presentation/pages/comment/widgets/comment_user_widget.dart';

class ListComment extends StatelessWidget {
  const ListComment({
    Key key,
    @required this.comments,
  }) : super(key: key);

  final List<CommentDomain> comments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (BuildContext context, int index) {
        return CommentUser(comment: comments[index]);
      },
    );
  }
}
