import 'package:flutter/material.dart';

class PodcastsGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        margin: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1.5,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Image.network(
                  'https://is3-ssl.mzstatic.com/image/thumb/Podcasts113/v4/34/42/11/344211a6-1df9-09d6-a3ab-15bde9a0e0b5/mza_7973678737825870159.jpeg/268x0w.jpg'
              ),
              margin: EdgeInsets.only(bottom: 6),
            ),
            Flexible(
              child: Text(
                'Is There Really a "Loneliness Epidemic"?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              'Friday',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
