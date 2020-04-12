import 'package:readhub_ui_practice/index.dart';

class Reaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.thumb_up, color: Colors.blue, size: 28),
            SizedBox(width: 40),
            Icon(Icons.comment, size: 28, color: Colors.grey),
          ],
        ),
        Icon(Icons.share, size: 28, color: Colors.grey),
      ],
    );
  }
}
