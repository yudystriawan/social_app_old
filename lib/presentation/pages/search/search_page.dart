import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_social_app/application/user/search/user_search_bloc.dart';
import 'package:my_social_app/presentation/pages/search/widgets/card_user_item.dart';
import 'package:my_social_app/presentation/pages/search/widgets/critical_failure_display.dart';
import 'package:my_social_app/presentation/pages/search/widgets/initial_widget.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: textController,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Search user..',
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.account_box),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () => textController.clear(),
            ),
          ),
          onFieldSubmitted: (value) =>
              context.bloc<UserSearchBloc>().add(UserSearchEvent.search(value)),
        ),
      ),
      body: BlocBuilder<UserSearchBloc, UserSearchState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const InitialWidget(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (state) =>
                CriticalFailureDisplay(failure: state.failure),
            loadSuccess: (state) => ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (BuildContext context, int index) {
                final user = state.users[index];
                return CardUserItem(user: user);
              },
            ),
          );
        },
      ),
    );
  }
}
