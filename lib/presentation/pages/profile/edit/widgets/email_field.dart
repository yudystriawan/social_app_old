import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class EmailField extends HookWidget {
  const EmailField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.user.email.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.user.email != c.user.email,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => context
                .bloc<UserFormBloc>()
                .add(UserFormEvent.bioChanged(value)),
            validator: (value) =>
                context.bloc<UserFormBloc>().state.user.email.value.fold(
                      (f) => f.maybeMap(
                        orElse: () => null,
                        empty: (_) => 'Cannot be empty',
                        invalidEmail: (_) => 'Email invalid',
                      ),
                      (_) => null,
                    ),
          ),
        );
      },
    );
  }
}
