import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/comment/form/comment_form_bloc.dart';
import 'package:my_social_app/domain/comment/value_objects.dart';

class CommentField extends HookWidget {
  const CommentField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocConsumer<CommentFormBloc, CommentFormState>(
      listenWhen: (p, c) =>
          p.isEditing != c.isEditing ||
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        textController.text = state.comment.body.value.fold(
          (l) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.comment.body != c.comment.body,
      builder: (context, state) {
        return TextFormField(
          controller: textController,
          decoration: const InputDecoration(labelText: 'Write a comment...'),
          maxLength: CommentBody.maxLength,
          minLines: 1,
          onChanged: (value) => context
              .read<CommentFormBloc>()
              .add(CommentFormEvent.bodyChanged(value)),
          validator: (value) =>
              context.read<CommentFormBloc>().state.comment.body.value.fold(
                    (f) => f.maybeMap(
                      orElse: () => null,
                      empty: (_) => 'Cannot be empty',
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}
