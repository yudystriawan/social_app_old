import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/post/form/post_form_bloc.dart';

class PostImageField extends StatelessWidget {
  const PostImageField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      builder: (context, state) {
        if (state.post.imageUrl.isValid()) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  state.post.imageUrl.getOrCrash(),
                ),
              ),
            ),
          );
        } else {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(state.imageFile),
              ),
            ),
          );
        }
      },
    );
  }
}
