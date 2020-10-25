import 'package:flutter/material.dart';

import 'package:my_social_app/domain/user/user_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  final UserFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.maybeMap(
          orElse: () => 'Something went wrong',
          userNotFound: (_) => 'User not found',
        ),
      ),
    );
  }
}
