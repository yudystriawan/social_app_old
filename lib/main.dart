import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/presentation/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  // await Firebase.initializeApp();
  runApp(AppWidget());
}
