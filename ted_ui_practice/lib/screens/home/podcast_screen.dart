import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/podcasts_grid.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'ポッドキャスト'),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: PodcastsGrid(),
      ),
    );
  }
}
