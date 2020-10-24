import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/presentation/pages/home/pages/feed_page.dart';
import 'package:my_social_app/presentation/pages/home/pages/profile_page.dart';
import 'package:my_social_app/presentation/pages/home/pages/search_page.dart';
import 'package:my_social_app/presentation/pages/home/pages/timeline_page.dart';
import 'package:my_social_app/presentation/pages/home/pages/upload_page.dart';
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
          child: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                _pageIndex = value;
              });
            },
            children: const [
              TimelinePage(),
              FeedPage(),
              UploadPage(),
              SearchPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) => _controller.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
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
