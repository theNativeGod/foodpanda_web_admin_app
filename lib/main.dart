import 'package:flutter/material.dart';
import './screens.dart/main_screens.dart/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodPanda Web Admin Panel',
      home: HomeScreen(),
    );
  }
}
