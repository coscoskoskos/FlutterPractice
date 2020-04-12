import 'package:readhub_ui_practice/index.dart';

class CurrentReaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.thumb_up, color: Colors.blue[200], size: 20),
          ],
        ),
        Text('コメント  0件', style: subTextStyle),
      ],
    );
  }
}
