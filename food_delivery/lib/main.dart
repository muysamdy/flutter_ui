import 'package:flutter/material.dart';
import 'package:food_delivery/Screen/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Delivery UI',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[50],
          primaryColor: Colors.deepOrangeAccent),
      home: HomeScreen(),
    );
  }
}

void main() => runApp(MyApp());
