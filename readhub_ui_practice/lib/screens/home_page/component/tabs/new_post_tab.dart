import 'package:readhub_ui_practice/index.dart';

class NewPostTab extends StatelessWidget {
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
      padding: EdgeInsets.only(bottom: 80),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 100,
      itemBuilder: (context, index) {
        return _buildListItem(context);
      },
    );
  }

  _buildListItem(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildItemContents(context),
      ),
    );
  }

  _buildItemContents(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildReviewer(context),
        SizedBox(height: 8),
        _buildTitle(context),
        _buildStars(context),
        _buildBodyText(context),
        SizedBox(height: 8),
        _buildBookData(context),
        SizedBox(height: 8),
        _buildCurrentReaction(context),
        Divider(thickness: 1),
        _buildReaction(),
      ],
    );
  }

  _buildReviewer(context) {
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
                Text('大西康介', style: Theme.of(context).textTheme.display1),
                SizedBox(width: 8),
                Text('1日前', style: Theme.of(context).textTheme.display3),
              ],
            ),
            Text('慶應義塾大学 環境情報学部', style: Theme.of(context).textTheme.display3),
          ],
        ),
      ],
    );
  }

  _buildTitle(context) {
    return Text('抽象性の高い話題を鋭い切り口で考えられる',
        style: Theme.of(context).textTheme.display1);
  }

  _buildStars(context) {
    return Row(
      children: <Widget>[
        Icon(Icons.star, color: Theme.of(context).primaryColor),
        Icon(Icons.star, color: Theme.of(context).primaryColor),
        Icon(Icons.star, color: Theme.of(context).primaryColor),
        Icon(Icons.star, color: Theme.of(context).primaryColor),
        Icon(Icons.star, color: Theme.of(context).primaryColor),
      ],
    );
  }

  _buildBodyText(context) {
    return DefaultTextStyle(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      child: Text(
          'AIの未来はどうなるのか、誰しもが考えたことがあるだろう。私自身、色んな人がいろんなことを言っているため、もはや何を考えればいいのか分からなくなってしまう感覚に陥る事があった。'),
      style: Theme.of(context).textTheme.display2,
    );
  }

  _buildBookData(context) {
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
                  style: Theme.of(context).textTheme.display1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                Text(
                  '著: マックス・テグマーク',
                  style: Theme.of(context).textTheme.display2,
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

  _buildCurrentReaction(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.thumb_up, color: Colors.blue[200], size: 20),
          ],
        ),
        Text('コメント  0件', style: Theme.of(context).textTheme.display3),
      ],
    );
  }

  _buildReaction() {
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
