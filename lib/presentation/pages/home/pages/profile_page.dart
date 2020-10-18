import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Profile'),
      body: const Text('Profile'),
    );
  }
}
