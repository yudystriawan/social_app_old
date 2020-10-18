import 'package:auto_route/auto_route.dart';
import 'routes/router.gr.dart' as app_router;
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Social App',
      builder: ExtendedNavigator.builder(
        router: app_router.Router(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
