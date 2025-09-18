import 'package:flutter/material.dart';
import 'package:stylish/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:stylish/view/home_screen/home_screen.dart';
import 'package:stylish/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const BottomNavbarScreen(),
    );
  }
}
