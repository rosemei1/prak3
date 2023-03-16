import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/photo_list.dart';

class ListItem extends StatelessWidget{
  final PhotoList place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckboxClick
  });

  @override
  Widget build(BuildContext context){
    return Card(
      color: isDone ? Colors.black12 : Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      place.name,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(place.tema),
                  ],
                ),
              )
          ),
          Checkbox(
              checkColor: Colors.blueAccent,
              value: isDone,
              onChanged: onCheckboxClick
          ),
        ],
      ),
    );
  }
}