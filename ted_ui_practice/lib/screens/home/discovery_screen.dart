import 'dart:ui';

import 'package:flutter/material.dart';

import '../../widgets/search_bar.dart';

class DiscoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SearchBar(),
                  SizedBox(height: 8),
                  _headLineBuilder('トピック'),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 160,
                    child: _buildTopicList(),
                  ),
                  SizedBox(height: 16),
                  _headLineBuilder('プレイリスト'),
                  SizedBox(
                    height: 285,
                    child: _buildPlaylistsList(),
                  ),
                  SizedBox(height: 24),
                  _headLineBuilder('講演者'),
                  SizedBox(
                    height: 160,
                    child: _buildSpeakersList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _headLineBuilder(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 24, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 22,
            ),
          ),
          Text(
            'すべて表示する',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  _buildTopicList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 4),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 120,
                width: 124,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.star_border,
                        size: 56,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  'スター',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _buildPlaylistsList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 4),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return Card(
          child: SizedBox(
            width: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 170,
                      height: 195,
                      child: Image.network(
                        'https://us.123rf.com/450wm/molnia/molnia1911/molnia191100012/135050891-modern-flat-design-for-analysis-website-banner-vector-illustration-concept-for-business-analysis-mar.jpg?ver=6',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        child: Text(
                          '16件のトーク',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          'How to get into a work-from-home mindset',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _buildSpeakersList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 4),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(4),
                child: CircleAvatar(
                  minRadius: 60,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg'),
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  'Bill Gates',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
