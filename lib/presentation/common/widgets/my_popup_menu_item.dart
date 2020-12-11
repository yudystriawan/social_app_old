import 'package:flutter/material.dart';
import 'package:my_social_app/presentation/pages/posts/widgets/row_pupup_menu_item_widget.dart';

class MyPopupMenuItem extends PopupMenuItem {
  MyPopupMenuItem({
    Key key,
    bool enabled = true,
    String value,
    @required String label,
    @required IconData iconData,
    @required BuildContext context,
  }) : super(
          key: key,
          value: value,
          enabled: enabled,
          textStyle:
              Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12),
          child: RowPopupMenuItem(label: label, iconData: iconData),
        );
}
