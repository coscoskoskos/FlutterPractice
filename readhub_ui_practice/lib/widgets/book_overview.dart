import 'package:readhub_ui_practice/index.dart';

class BookOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(style: BorderStyle.solid, color: Colors.grey[300]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 80,
            height: 112,
            child: Container(color: Colors.blue),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'LIFE3.0――――人工知能時代に人間であるということ',
                  style: titleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                Text(
                  '著: マックス・テグマーク',
                  style: bodyTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey[300]),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '読んだ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 2),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey[300]),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '読みたい',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 2),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
