import 'package:readhub_ui_practice/index.dart';

class HomePage extends StatelessWidget {
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
            FollowPostTab(),
            NewPostTab(),
            LibraryTab(),
          ],
        ),
      ),
    );
  }
}