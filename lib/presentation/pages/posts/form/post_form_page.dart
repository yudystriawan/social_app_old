import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/post/form/post_form_bloc.dart';
import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/loading_overlay.dart';
import 'package:my_social_app/presentation/pages/posts/form/widgets/body_field.dart';
import 'package:my_social_app/presentation/pages/posts/form/widgets/image_field.dart';
import 'package:my_social_app/presentation/pages/posts/form/widgets/location_field.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class PostFormPage extends StatelessWidget implements AutoRouteWrapper {
  const PostFormPage({
    Key key,
    @required this.post,
    @required this.userId,
    this.imageFile,
  }) : super(key: key);

  final PostDomain post;
  final File imageFile;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) => FlushbarHelper.createError(
              message: f.maybeMap(
                orElse: () => 'Something went wrong.',
                unexpected: (_) => 'Unexpected',
              ),
            ).show(context),
            (_) => ExtendedNavigator.of(context).popUntil(
              (route) => route.settings.name == Routes.homePage,
            ),
          ),
        );
      },
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return Stack(
          children: [
            const PostFormScaffold(),
            LoadingOverlay(isSubmitting: state.isSubmitting),
          ],
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<PostFormBloc>()
          ..add(PostFormEvent.initialized(optionOf(post)))
          ..add(PostFormEvent.fileImageChanged(optionOf(imageFile)))
          ..add(PostFormEvent.userIdChanged(userId)),
        child: this,
      );
}

class PostFormScaffold extends StatelessWidget {
  const PostFormScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create post'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              FocusScope.of(context).unfocus();
              context.read<PostFormBloc>().add(const PostFormEvent.submit());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PostFormBloc, PostFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: const [
                  PostImageField(),
                  PostBodyField(),
                  PostLocationField(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
