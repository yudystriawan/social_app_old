import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:my_social_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_social_app/presentation/pages/sign_in/widgets/email_field.dart';
import 'package:my_social_app/presentation/pages/sign_in/widgets/password_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Invalid email and password combination',
              ),
            ).show(context),
            (_) => null,
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              EmailField(),
              const SizedBox(height: 16),
              PasswordField(),
              const SizedBox(height: 48),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Register'),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('Sign In'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
