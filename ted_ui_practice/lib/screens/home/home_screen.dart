import 'package:flutter/material.dart';

import '../tabs/japanese_subtitle.dart';
import '../tabs/latest.dart';
import '../tabs/trending.dart';
import '../tabs/hot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
              text: 'TED ',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 22),
              children: <TextSpan>[
                TextSpan(
                  text: 'トーク',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.black54,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.all(0),
            tabs: <Widget>[
              Container(
                width: 80,
                child: Tab(
                  text: '日本語字幕',
                ),
              ),
              Tab(text: '最新'),
              Container(
                width: 120,
                child: Tab(text: 'トレンディング'),
              ),
              Tab(text: '再生回数最多'),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            JapaneseSubtitleTab(),
            LatestTab(),
            TrendingTab(),
            HotTab(),
          ],
        ),
      ),
    );
  }
}
