import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Edit Profile'),
      body: const Text('Edit Profile'),
    );
  }
}
