import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class PhotoField extends HookWidget {
  const PhotoField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoUrl = useState('');
    return BlocConsumer<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        photoUrl.value = state.user.photoUrl.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      buildWhen: (p, c) => p.user.photoUrl != c.user.photoUrl,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('photo ${photoUrl.value}'),
        );
      },
    );
  }
}
