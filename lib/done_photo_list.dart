import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak3/model/photo_list.dart';

class DonePhotophotoList extends StatelessWidget{
  final List<PhotoList> donePhotophotoList;
  const DonePhotophotoList({
    Key? key,
    required this.donePhotophotoList
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title: const Text('Photo has been seen'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final PhotoList place = donePhotophotoList[index];
            return Card(
              color: Colors.black12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text(
                    place.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const Icon(Icons.done_outlined),
                ],
              ),
            );
          },
        itemCount: donePhotophotoList.length,
      ),
    );
  }
}