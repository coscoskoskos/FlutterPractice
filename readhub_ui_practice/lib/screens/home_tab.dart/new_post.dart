import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(24, 32, 24, 10),
            child: _buildHeadline(context),
          ),
          _buildPosts(),
        ],
      ),
    );
  }

  _buildHeadline(context) {
    return Text(
      '新着投稿',
      style: Theme.of(context).textTheme.headline,
    );
  }

  _buildPosts() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 100, //とりあえず10に設定
      itemBuilder: (context, index) {
        return _buildListItem(context);
      },
    );
  }

  _buildListItem(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 6, 10, 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset.fromDirection(1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
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
                        Text('大西康介',
                            style: Theme.of(context).textTheme.display1),
                        SizedBox(width: 8),
                        Text('1日前',
                            style: Theme.of(context).textTheme.display3),
                      ],
                    ),
                    Text('慶應義塾大学 環境情報学部',
                        style: Theme.of(context).textTheme.display3),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Text('抽象性の高い話題を鋭い切り口で考えられる',
                style: Theme.of(context).textTheme.display1),
            Row(
              children: <Widget>[
                Icon(Icons.star, color: Theme.of(context).primaryColor),
                Icon(Icons.star, color: Theme.of(context).primaryColor),
                Icon(Icons.star, color: Theme.of(context).primaryColor),
                Icon(Icons.star, color: Theme.of(context).primaryColor),
                Icon(Icons.star, color: Theme.of(context).primaryColor),
              ],
            ),
            DefaultTextStyle(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              child: Text(
                  'AIの未来はどうなるのか、誰しもが考えたことがあるだろう。私自身、色んな人がいろんなことを言っているため、もはや何を考えればいいのか分からなくなってしまう感覚に陥る事があった。'),
              style: Theme.of(context).textTheme.display2,
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.grey[300]),
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
                          style: Theme.of(context).textTheme.display1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 16),
                        Text('著: マックス・テグマーク',
                            style: Theme.of(context).textTheme.display2),
                        SizedBox(height: 16),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.grey[300]),
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
                                    style: BorderStyle.solid,
                                    color: Colors.grey[300]),
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
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.thumb_up, color: Colors.blue[200], size: 20),
                  ],
                ),
                Text('コメント  0件', style: Theme.of(context).textTheme.display3),
              ],
            ),
            Divider(thickness: 1),
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
