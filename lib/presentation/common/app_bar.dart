import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({
//     Key key,
//     @required this.title,
//   }) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(title),
//     );
//   }
// }

AppBar getAppBar({
  @required BuildContext context,
  @required String title,
}) {
  return AppBar(
    title: Text(title),
  );
}
