import 'package:flutter/material.dart';

class MyLinearProgressIndicator extends LinearProgressIndicator
    implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 6);
}
