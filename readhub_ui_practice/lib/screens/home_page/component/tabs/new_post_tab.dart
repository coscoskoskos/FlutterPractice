import 'package:readhub_ui_practice/index.dart';

class NewPostTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildPosts(),
        ],
      ),
    );
  }

  _buildPosts() {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 80, top: 4),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return _buildListItem(context);
      },
    );
  }

  _buildListItem(context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/review_detail'),
      child: Container(
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
      ),
    );
  }

  _buildItemContents(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Reviewer(),
        SizedBox(height: 16),
        _buildTitle(context),
        SizedBox(height: 8),
        _buildStars(context),
        _buildBodyText(context),
        SizedBox(height: 20),
        BookOverView(),
        SizedBox(height: 10),
        CurrentReaction(),
        SizedBox(height: 2),
        Divider(thickness: 1),
        SizedBox(height: 8),
        Reaction(),
      ],
    );
  }

  _buildTitle(context) {
    return Text('抽象性の高い話題', style: titleTextStyle);
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
      style: bodyTextStyle,
    );
  }


}
