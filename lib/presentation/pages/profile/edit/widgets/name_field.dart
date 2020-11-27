import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class NameField extends HookWidget {
  const NameField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.user.name.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.user.name != c.user.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
            onChanged: (value) => context
                .read<UserFormBloc>()
                .add(UserFormEvent.nameChanged(value)),
            validator: (value) =>
                context.read<UserFormBloc>().state.user.name.value.fold(
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
