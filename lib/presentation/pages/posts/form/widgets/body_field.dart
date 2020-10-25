import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/post/form/post_form_bloc.dart';
import 'package:my_social_app/domain/post/value_objects.dart';

class PostBodyField extends HookWidget {
  const PostBodyField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.post.body.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.post.body != c.post.body,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Body',
            ),
            maxLength: PostBody.maxLength,
            maxLines: null,
            minLines: 5,
            onChanged: (value) => context
                .bloc<PostFormBloc>()
                .add(PostFormEvent.bodyChanged(value)),
            validator: (value) =>
                context.bloc<PostFormBloc>().state.post.body.value.fold(
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
