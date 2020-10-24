import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (value) => ExtendedNavigator.of(context).replace(
              value.user.failureOption.isNone()
                  ? Routes.homePage
                  : Routes.editProfilePage),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.signInPage),
        );
      },
      child: const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
