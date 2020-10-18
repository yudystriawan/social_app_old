import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/sign_in_form/sign_in_form_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (p, c) => p.emailAddress != c.emailAddress,
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
          ),
          autocorrect: false,
          obscureText: true,
          onChanged: (value) => context
              .bloc<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value)),
          validator: (_) =>
              context.bloc<SignInFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}
