import 'package:flutter/material.dart';
import './pages/login_page.dart';
import './pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodCorner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialApp(
        title: 'FoodCorner',
        initialRoute: '/login',
        routes: {
          '/': (context) => HomePage(),
          '/login' : (context) => LoginPage(),
        },
      ),
    );
  }
}
