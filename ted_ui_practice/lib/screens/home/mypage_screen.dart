import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'マイTED'),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[300],
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.biography.com/.image/t_share/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg'),
                ),
                title: Text(
                  '康介 大西',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                subtitle: Text('ログインしました'),
                onTap: () {},
              ),
            ),
            ListTile(
              leading: Container(
                child: Icon(
                  Icons.list,
                  color: Colors.red,
                ),
              ),
              title: Text(
                'マイリスト',
                style: TextStyle(
                  height: 1,
                ),
              ),
              subtitle: Text(
                '1件のトーク',
                style: TextStyle(
                  height: 1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              title: Text('お気に入り'),
              subtitle: Text('1件のトーク'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.file_download,
                color: Colors.red,
              ),
              title: Text('ダウンロード'),
              subtitle: Text('トークはありません'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.red,
              ),
              title: Text('履歴'),
              subtitle: Text('6件のトーク'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
