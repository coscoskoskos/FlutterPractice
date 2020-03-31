import 'package:flutter/material.dart';

import './podcasts_grid_item.dart';

class PodcastsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 4, bottom: 100),
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return PodcastsGridItem();
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
    );
  }
}