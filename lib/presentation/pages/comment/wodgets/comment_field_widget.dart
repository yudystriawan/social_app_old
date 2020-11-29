import 'package:flutter/material.dart';

class CommentField extends StatelessWidget {
  const CommentField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Write a comment...'),
    );
  }
}
