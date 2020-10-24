import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Feed'),
      body: const Text('Feed'),
    );
  }
}
