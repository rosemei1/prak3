import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak3/model/photo_list.dart';
import 'package:prak3/provider/done_photo_provider.dart';
import 'package:provider/provider.dart';

class DonePhotophotoList extends StatelessWidget{
  const DonePhotophotoList({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    final List<PhotoList> donePhotophotoList = 
      Provider.of<DonePhotoProvider>(
          context,
          listen: false,
      ).donePhotophotoList;

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