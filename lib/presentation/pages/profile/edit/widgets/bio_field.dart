import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class BioField extends HookWidget {
  const BioField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.user.bio.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.user.bio != c.user.bio,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Bio',
            ),
            onChanged: (value) => context
                .bloc<UserFormBloc>()
                .add(UserFormEvent.bioChanged(value)),
            validator: (value) =>
                context.bloc<UserFormBloc>().state.user.bio.value.fold(
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
