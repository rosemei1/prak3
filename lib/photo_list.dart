import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak3/list_item.dart';
import 'package:prak3/done_photo_list.dart';
import 'package:prak3/model/photo_list.dart';
import 'package:prak3/provider/done_photo_provider.dart';
import 'package:provider/provider.dart';
import 'detail_screen.dart';
import 'provider/done_photo_provider.dart';

class FotoList extends StatefulWidget{
  const FotoList({Key? key}): super(key: key);

  @override
  _FotolistState createState() => _FotolistState();
}

class _FotolistState extends State<FotoList>{
  final List<PhotoList> photophotoList = [
    PhotoList(name: "Turn Around", tema: "Evasion", imageAsset: "assets/images/el.JPG"),
    PhotoList(name: "The Outcast", tema: "Lonely in the Crowd", imageAsset: "assets/images/mbak.JPG"),
    PhotoList(name: "Turn the Ordinary into Extraordinary", tema: "Immortalize", imageAsset: "assets/images/bareng.JPG"),
    PhotoList(name: "A Small Thing", tema: "Us", imageAsset: "assets/images/mas.jpg"),
  ];


  @override
  Widget build(BuildContext context){
      return ListView.builder(
        itemBuilder: (context, index){
          final PhotoList place = photophotoList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DonePhotoProvider>(
              builder: (context, DonePhotoProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: data.donePhotophotoList.contains(place),
                  onCheckboxClick: (bool? value){
                    setState(() {
                     if(value!=null){
                      value
                        ? data.donePhotophotoList.add(place)
                       : data.donePhotophotoList.remove(place);
                     }
                   });
                  }
                );
              },
            ),
          );
        },
        itemCount: photophotoList.length,
      );
  }
}