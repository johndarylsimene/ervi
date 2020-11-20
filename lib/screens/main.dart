import 'package:ervi/screens/drawer_pages.dart';
import 'package:flutter/material.dart';
import 'package:ervi/screens/offerService.dart';
import 'package:ervi/screens/homepage.dart';
import 'package:ervi/screens/info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/offerSer': (context) => UserOfferService(),
        '/info': (context) => Info(),
        '/profile': (context) => ProfilePage(),
        '/bookmark': (context) => BookmarkPage(),
        '/setting': (context) => SettingPage(),
        '/logout': (context) => LogOut(),
      },
    );
  }
}
