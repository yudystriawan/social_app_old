import 'package:flutter/material.dart';

class ColumnCount extends StatelessWidget {
  const ColumnCount({
    Key key,
    @required this.label,
    @required this.count,
  }) : super(key: key);

  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
