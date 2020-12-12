import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/application/user/suggest/user_suggest_bloc.dart';
import 'package:my_social_app/injection.dart';
import 'package:my_social_app/presentation/pages/search/widgets/card_user_item.dart';

class UserSuggestion extends StatelessWidget {
  const UserSuggestion({
    Key key,
    @required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserSuggestBloc>()
        ..add(UserSuggestEvent.getUserSuggestion(userId)),
      child: BlocBuilder<UserSuggestBloc, UserSuggestState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (state) => Center(
              child: Text(
                state.failure.maybeMap(
                  orElse: () => 'something went wrong',
                  userNotFound: (_) => 'No user',
                ),
              ),
            ),
            loadSuccess: (state) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Users to follow',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 16, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardUserItem(user: state.users[index]);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
