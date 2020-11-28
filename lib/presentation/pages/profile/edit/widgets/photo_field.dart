import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/form/user_form_bloc.dart';

class PhotoField extends HookWidget {
  const PhotoField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoUrl = useState('');
    return BlocListener<UserFormBloc, UserFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        photoUrl.value = state.user.photoUrl.value.fold(
          (_) => '',
          (r) => r,
        );
      },
      child: photoUrl.value == ''
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: CachedNetworkImageProvider(
                  photoUrl.value,
                ),
              ),
            ),
    );
    // return BlocConsumer<UserFormBloc, UserFormState>(
    //   listenWhen: (p, c) => p.isEditing != c.isEditing,
    //   listener: (context, state) {
    //     photoUrl.value = state.user.photoUrl.value.fold(
    //       (_) => '',
    //       (r) => r,
    //     );
    //   },
    //   builder: (context, state) {
    //     debugPrint('BUILD2');
    //     return Padding(
    //       padding: const EdgeInsets.all(12.0),
    //       child: CircleAvatar(
    //         radius: 50.0,
    //         backgroundImage: CachedNetworkImageProvider(
    //           photoUrl.value,
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
