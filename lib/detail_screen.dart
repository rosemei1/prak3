import 'package:flutter/material.dart';
import 'package:prak3/model/photo_list.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key,required this.place}) : super(key: key);

  final PhotoList place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alcantera',
                  ),
                )
            ),//title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  Column(
                    children:const <Widget> [
                      Icon(Icons.person),
                      Text("Can be anyone"),
                    ],
                  ),
                  Column(
                    children:const <Widget> [
                      Icon(Icons.location_city_outlined),
                      Text("Can be anywhere"),
                    ],
                  ),
                  Column(
                    children:const <Widget> [
                      Icon(Icons.timelapse),
                      Text("Can be anytime"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                '-In a crowd but feels lonely-\nSurrounded by many, yet alone,\nInvisible in a crowd unknown.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Poppins'),
              ),
            ),//desc
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/mbak.JPG'),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/mas.jpg')
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/bareng.JPG')
                    ),
                  ),

                ],
              ),
            ),//images slider
          ],
        ),
      ),
    );
  }
}