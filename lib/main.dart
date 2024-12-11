import 'package:flutter/material.dart';
import 'package:assignment_food_ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Food',
      home: HomeScreen(),
    );
  }
}