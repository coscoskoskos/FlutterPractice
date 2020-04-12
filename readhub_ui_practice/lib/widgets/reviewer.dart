import 'package:readhub_ui_practice/index.dart';

class Reviewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 34,
        ),
        SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '大西康介',
                  style: titleTextStyle,
                ),
                SizedBox(width: 8),
                Text(
                  '1日前',
                  style: subTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 4),
            Text('慶應義塾大学 環境情報学部', style: subTextStyle),
          ],
        ),
      ],
    );
  }
}
