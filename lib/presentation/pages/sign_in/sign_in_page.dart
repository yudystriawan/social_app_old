import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/loading_overlay.dart';

import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget implements AutoRouteWrapper {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return Stack(
          children: [
            const Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: SignInForm(),
                  ),
                ),
              ),
            ),
            LoadingOverlay(
              isSubmitting: state.isSubmitting,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: this,
      );
}
