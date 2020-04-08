import 'package:flutter/material.dart';

import '../home_tab.dart/new_post.dart';
import '../home_tab.dart/follow_post.dart';
import '../home_tab.dart/library.dart';
import '../../utilities/text_style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ReadHub', style: appBarTextStyle),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey,
            labelStyle: tabBarTextStyle,
            tabs: <Widget>[
              Tab(text: 'フォローの投稿'),
              Tab(text: '新着投稿'),
              Tab(text: 'ライブラリ'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FollowPost(),
            NewPost(),
            Library(),
          ],
        ),
      ),
    );
  }
}