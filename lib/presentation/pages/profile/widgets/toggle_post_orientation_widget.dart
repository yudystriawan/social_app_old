import 'package:flutter/material.dart';

class TogglePostOrientation extends StatelessWidget {
  const TogglePostOrientation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.grid_off),
          color: Theme.of(context).primaryColor,
          splashRadius: 23,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.list),
          color: Theme.of(context).primaryColor,
          splashRadius: 23,
          onPressed: () {},
        ),
      ],
    );
  }
}
