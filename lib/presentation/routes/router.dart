import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_social_app/presentation/pages/home/home_page.dart';
import 'package:my_social_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:my_social_app/presentation/pages/splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AdaptiveRoute(page: SplashPage, initial: true),
    AdaptiveRoute(page: SignInPage),
    AdaptiveRoute(page: HomePage),
  ],
)
class $Router {}
