import 'package:flutter/material.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  MyAppBar({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.red);
    return AppBar(
      elevation: 3,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(color: Colors.red),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_vert),
          color: Colors.black54,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
