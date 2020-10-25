import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_social_app/domain/core/app_enums.dart';

class MyDialog {
  static Future<SourceImage> selectImageSource(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Create post'),
          children: [
            SimpleDialogOption(
              onPressed: () =>
                  ExtendedNavigator.of(context).pop(SourceImage.camera),
              child: const Text('From camera'),
            ),
            SimpleDialogOption(
              onPressed: () =>
                  ExtendedNavigator.of(context).pop(SourceImage.gallery),
              child: const Text('From gallery'),
            ),
          ],
        );
      },
    );
  }
}
