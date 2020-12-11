import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RowPopupMenuItem extends StatelessWidget {
  const RowPopupMenuItem({
    Key key,
    @required this.label,
    @required this.iconData,
  }) : super(key: key);

  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 16,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            label,
          ),
        ),
      ],
    );
  }
}
