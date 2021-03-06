import 'package:readhub_ui_practice/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReadHub',
      theme: appTheme,
      home: HomeScreen(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen(),
        '/review_detail': (BuildContext context) => ReviewDetailScreen(),
      },
    );
  }
}
