// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../pages/home/home_page.dart';
import '../pages/profile/edit/edit_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String editProfilePage = '/edit-profile-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    editProfilePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.editProfilePage, page: EditProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SignInPage().wrappedRoute(context),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
    EditProfilePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const EditProfilePage(),
        settings: data,
      );
    },
  };
}
