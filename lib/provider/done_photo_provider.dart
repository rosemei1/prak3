import 'package:flutter/cupertino.dart';
import 'package:prak3/model/photo_list.dart';


class DonePhotoProvider extends ChangeNotifier{
  final List<PhotoList> _donePhotophotoList = [];

  List<PhotoList> get donePhotophotoList => _donePhotophotoList;

  void complete(PhotoList place, bool isDone){
    isDone
        ? _donePhotophotoList.add(place)
        : _donePhotophotoList.remove(place);
    notifyListeners();
  }
}