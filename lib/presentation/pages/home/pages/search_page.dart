import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/common/app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Search'),
      body: const Text('Search'),
    );
  }
}
