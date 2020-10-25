import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/post/form/post_form_bloc.dart';

class PostLocationField extends HookWidget {
  const PostLocationField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.post.location.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.post.location != c.post.location,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Location',
            ),
            onChanged: (value) => context
                .bloc<PostFormBloc>()
                .add(PostFormEvent.locationChanged(value)),
            validator: (value) =>
                context.bloc<PostFormBloc>().state.post.location.value.fold(
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
