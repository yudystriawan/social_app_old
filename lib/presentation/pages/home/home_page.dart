import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/application/file/loader/file_loader_bloc.dart';
import 'package:my_social_app/application/post/by_user_wathcer/post_by_user_watcher_bloc.dart';
import 'package:my_social_app/application/user/search/user_search_bloc.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/pages/feed/feed_page.dart';
import 'package:my_social_app/presentation/pages/profile/profile_page.dart';
import 'package:my_social_app/presentation/pages/search/search_page.dart';
import 'package:my_social_app/presentation/pages/timeline/timeline_page.dart';
import 'package:my_social_app/presentation/pages/upload/upload_page.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller;
  int _pageIndex = 2;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage),
              authenticated: (value) {
                if (value.user.failureOption.isSome()) {
                  ExtendedNavigator.of(context).replace(
                    Routes.editProfilePage,
                    arguments: EditProfilePageArguments(editedUser: value.user),
                  );
                }
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                authenticated: (state) => PageView(
                  controller: _controller,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  children: [
                    const TimelinePage(),
                    const FeedPage(),
                    BlocProvider(
                      create: (context) => getIt<FileLoaderBloc>(),
                      child: UploadPage(
                        userId: state.user.id.getOrCrash(),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => getIt<UserSearchBloc>(),
                      child: const SearchPage(),
                    ),
                    BlocProvider(
                      create: (context) => getIt<PostByUserWatcherBloc>()
                        ..add(PostByUserWatcherEvent.watchAllStarted(
                          state.user.id.getOrCrash(),
                        )),
                      child: ProfilePage(user: state.user),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) => _controller.jumpToPage(
            value,
          ),
          unselectedItemColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).primaryColorDark,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: 'Timeline',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
