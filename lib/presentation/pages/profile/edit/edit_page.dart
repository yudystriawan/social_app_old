import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';
import 'package:my_social_app/domain/auth/user.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';
import 'package:my_social_app/presentation/common/loading_overlay.dart';
import 'package:my_social_app/presentation/pages/profile/edit/widgets/bio_field.dart';
import 'package:my_social_app/presentation/pages/profile/edit/widgets/email_field.dart';
import 'package:my_social_app/presentation/pages/profile/edit/widgets/name_field.dart';
import 'package:my_social_app/presentation/pages/profile/edit/widgets/photo_field.dart';
import 'package:my_social_app/presentation/pages/profile/edit/widgets/username_field.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class EditProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const EditProfilePage({
    Key key,
    @required this.editedUser,
  }) : super(key: key);

  final UserDomain editedUser;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.map(
                unexpected: (_) =>
                    'Unexpected error occured, please contact support.',
                insufficientPermissions: (_) =>
                    "Couldn't update the note. Was it deleted from another device?",
                unableToUpdate: (_) => 'Insufficient permissions',
              ),
            ).show(context),
            (_) {
              ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.homePage,
                  (route) => route.settings.name == Routes.homePage);
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return Stack(
          children: [
            const EditProfileScaffold(),
            LoadingOverlay(isSubmitting: state.isSubmitting),
          ],
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<UserFormBloc>()
          ..add(UserFormEvent.initialized(optionOf(editedUser))),
        child: this,
      );
}

class EditProfileScaffold extends StatelessWidget {
  const EditProfileScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: BlocBuilder<UserFormBloc, UserFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  const PhotoField(),
                  const UsernameField(),
                  const NameField(),
                  const EmailField(),
                  const BioField(),
                  RaisedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context
                          .bloc<UserFormBloc>()
                          .add(const UserFormEvent.submit());
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
