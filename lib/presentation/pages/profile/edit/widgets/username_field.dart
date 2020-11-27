import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class UsernameField extends HookWidget {
  const UsernameField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.user.username.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.user.username != c.user.username,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
            onChanged: (value) => context
                .read<UserFormBloc>()
                .add(UserFormEvent.usernameChanged(value)),
            validator: (value) =>
                context.read<UserFormBloc>().state.user.username.value.fold(
                      (f) => f.maybeMap(
                        orElse: () => null,
                        empty: (_) => 'Cannot be empty',
                      ),
                      (_) => null,
                    ),
          ),
        );
      },
    );
  }
}
