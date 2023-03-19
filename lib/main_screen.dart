import 'package:flutter/material.dart';
import 'package:prak3/photo_list.dart';
import 'package:prak3/done_photo_list.dart';


class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documentation'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DonePhotophotoList();
                }),
              );
            },
          )
        ],
      ),
      body: FotoList(),
    );
  }
}