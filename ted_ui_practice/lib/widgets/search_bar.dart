import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Card(
        elevation: 6,
        child: Row(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.search, color: Colors.grey[600]),
                  SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: 'TED トークを検索',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.mic),
                      color: Colors.grey[600],
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.cast),
                      color: Colors.grey[600],
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.more_vert),
                      color: Colors.grey[600],
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
