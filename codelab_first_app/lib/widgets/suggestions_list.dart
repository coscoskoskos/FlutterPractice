import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './suggestion.dart';

Widget _buildSuggestions() {
  return ListView.builder(
    padding: const EdgeInsets.all(16),
    itemBuilder: (_context, i) {
      if (i.isOdd) {
        return Divider();
      }
      final int index = i ~/ 2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return buildRow(_suggestions[index]);
    },
  );
}
