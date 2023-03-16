import 'package:flutter/material.dart';
import 'package:prak3/detail_screen.dart';
import 'package:prak3/main_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}




