import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OutlineButtonProfile extends StatelessWidget {
  const OutlineButtonProfile({
    Key key,
    @required this.onPressed,
    @required this.label,
  }) : super(key: key);

  final Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 24,
      child: OutlineButton(
        onPressed: onPressed,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        child: Text(label),
      ),
    );
  }
}
