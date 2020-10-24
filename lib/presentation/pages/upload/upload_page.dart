import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Upload'),
      body: const Text('Upload'),
    );
  }
}
