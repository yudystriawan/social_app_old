import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Timeline'),
      body: const Text('Timeline'),
    );
  }
}
