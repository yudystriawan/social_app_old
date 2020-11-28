import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/auth/auth_bloc.dart';
import 'package:my_social_app/domain/user/user.dart';
import 'package:my_social_app/presentation/pages/profile/widgets/profile_header_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserDomain user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () =>
                context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProfileHeader(user: user),
      ),
    );
  }
}
