import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/comment/form/comment_form_bloc.dart';
import 'package:my_social_app/application/comment/watcher/comment_watcher_bloc.dart';

import 'package:my_social_app/domain/post/post.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';
import 'package:my_social_app/presentation/pages/comment/widgets/list_comment_widget.dart';

import 'widgets/comment_field_widget.dart';

class CommentPage extends StatelessWidget with AutoRouteWrapper {
  const CommentPage({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Comments'),
      body: BlocListener<CommentFormBloc, CommentFormState>(
        listenWhen: (p, c) =>
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (f) => FlushbarHelper.createError(
                  message: f.maybeMap(
                orElse: () => 'Something went wrong',
                unexpected: (_) => 'Unexpected error',
              )).show(context),
              (_) {
                context
                    .read<CommentFormBloc>()
                    .add(const CommentFormEvent.bodyChanged(''));
                FlushbarHelper.createSuccess(message: 'Sent').show(context);
              },
            ),
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => Container(),
                        loadInProgress: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        loadSuccess: (state) =>
                            ListComment(comments: state.comments),
                        loadFailure: (state) => Center(
                          child: Text(
                            state.maybeMap(
                              orElse: () => 'Something went wrong',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Divider(),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => Container(),
                      authenticated: (state) {
                        final user = state.user;
                        return ListTile(
                          title: const CommentField(),
                          trailing: IconButton(
                            icon: const Icon(Icons.send),
                            color: Theme.of(context).primaryColor,
                            onPressed: context
                                .watch<CommentFormBloc>()
                                .state
                                .comment
                                .body
                                .value
                                .fold(
                                  (l) => null,
                                  (_) => () {
                                    FocusScope.of(context).unfocus();
                                    sendCommentData(user, post, context);
                                  },
                                ),
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CommentFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CommentWatcherBloc>()
            ..add(CommentWatcherEvent.watchAllStarted(post.id.getOrCrash())),
        ),
      ],
      child: this,
    );
  }

  void sendCommentData(UserDomain user, PostDomain post, BuildContext context) {
    context
        .read<CommentFormBloc>()
        .add(CommentFormEvent.usernameChanged(user.username.getOrCrash()));
    context
        .read<CommentFormBloc>()
        .add(CommentFormEvent.avatarUrlChanged(user.photoUrl.getOrCrash()));
    context
        .read<CommentFormBloc>()
        .add(CommentFormEvent.userIdChanged(user.id.getOrCrash()));
    context.read<CommentFormBloc>().add(CommentFormEvent.submit(post));
  }
}
