import 'package:flutter/material.dart';

import './bottom_nav/home.dart';
import './bottom_nav/activity.dart';
import './bottom_nav/connection.dart';
import './bottom_nav/notification.dart';
import './bottom_nav/mypage.dart';
import '../utilities/text_style.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ActivityScreen(),
    ConnectionScreen(),
    NotificationScreen(),
    MyPageScreen()
  ];

  void bottomNavigate(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: bottomNavigate,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('ホーム', style: bottomNavTextStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.show_chart),
          title: Text('アクティビティ', style: bottomNavTextStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_add),
          title: Text('つながり', style: bottomNavTextStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('通知', style: bottomNavTextStyle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('マイページ', style: bottomNavTextStyle),
        ),
      ],
    );
  }
}
