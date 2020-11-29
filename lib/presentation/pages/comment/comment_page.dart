import 'package:flutter/material.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';
import 'package:my_social_app/presentation/pages/comment/wodgets/comment_field_widget.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Comments'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Expanded(
                child: Text('list_comments'),
              ),
              const Divider(),
              ListTile(
                title: CommentField(),
                trailing: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
