import 'package:flutter/material.dart';
import 'package:prak3/detail_screen.dart';
import 'package:prak3/main_screen.dart';
import 'package:prak3/provider/done_photo_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DonePhotoProvider(),
        child: MaterialApp(
          title: 'Contacts',
          theme: ThemeData.dark(),
          home: MainScreen(),
        ),
    );
  }
}




