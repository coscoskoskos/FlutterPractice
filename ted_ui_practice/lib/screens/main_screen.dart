import 'package:flutter/material.dart';

import './home/home_screen.dart';
import './home/discovery_screen.dart';
import './home/podcast_screen.dart';
import './home/mypage_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    DiscoveryScreen(),
    PodcastScreen(),
    MyPageScreen(),
  ];

  void buttomNavigate(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: buttomNavigate,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text('トーク'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('新たに発見'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset),
            title: Text('ポッドキャスト'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('マイTED'),
          ),
        ],
      ),
    );
  }
}
