import 'package:flutter/material.dart';

import 'package:my_social_app/domain/user/user.dart';

class ColumnProfileInfo extends StatelessWidget {
  const ColumnProfileInfo({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserDomain user;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Text(
                user.name.getOrCrash(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(width: 4),
              Text(
                '(${user.username.getOrCrash()})',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
        Text(user.bio.getOrCrash(), style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
