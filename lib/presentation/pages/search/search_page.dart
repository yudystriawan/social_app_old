import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/pages/search/widgets/initial_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Search user..',
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.account_box),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: const InitialWidget(),
    );
  }
}
