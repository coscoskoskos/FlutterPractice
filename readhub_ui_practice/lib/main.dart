import 'package:readhub_ui_practice/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReadHub',
      theme: appTheme,
      home: HomeScreen(),
    );
  }
}
