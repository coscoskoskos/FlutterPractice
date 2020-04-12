import 'package:readhub_ui_practice/index.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  MyAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: appBarTextStyle,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
