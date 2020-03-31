import 'package:flutter/material.dart';

import '../../widgets/talks_list.dart';

class JapaneseSubtitleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: TalksList(),
    );
  }
}
