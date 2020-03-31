import 'package:flutter/material.dart';

import './talks_list_item.dart';

class TalksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.only(top: 8),
      itemBuilder: (ctx, index) => TalksListItem(),
    );
  }
}
