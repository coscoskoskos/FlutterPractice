import 'package:readhub_ui_practice/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ActivityPage(),
    ConnectionPage(),
    NotificationPage(),
    MyPagePage()
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
      unselectedItemColor: Colors.grey,
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
