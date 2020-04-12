import 'package:readhub_ui_practice/index.dart';

class ReviewDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('レビュー'),
      body: SingleChildScrollView(
        child: Column(
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
            Reaction(),
            SizedBox(height: 2),
            Divider(thickness: 1),
            SizedBox(height: 8),
            CurrentReaction(),
          ],
        ),
      ),
    );
  }

  _buildTitle(context) {
    return Text(
      '抽象性の高い話題',
      style: titleTextStyle.copyWith(fontSize: 20),
    );
  }

  _buildStars(context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
      ],
    );
  }

  _buildBodyText(context) {
    return DefaultTextStyle(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      child: Text(
          'AIの未来はどうなるのか、誰しもが考えたことがあるだろう。私自身、色んな人がいろんなことを言っているため、もはや何を考えればいいのか分からなくなってしまう感覚に陥る事があった。'),
      style: bodyTextStyle.copyWith(fontSize: 18),
    );
  }
}
