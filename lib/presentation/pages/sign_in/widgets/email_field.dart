import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/sign_in_form/sign_in_form_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (p, c) => p.emailAddress != c.emailAddress,
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email',
          ),
          autocorrect: false,
          onChanged: (value) => context
              .bloc<SignInFormBloc>()
              .add(SignInFormEvent.emailChanged(value)),
          validator: (_) =>
              context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}
