import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';

import 'Pages/Login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home_Page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => Login_Page(),
        "/home": (context) => Home_Page(),
        "/login": (context) => Login_Page()
      },
    );
  }
}
