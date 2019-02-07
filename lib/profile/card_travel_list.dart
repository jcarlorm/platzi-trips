import 'package:flutter/material.dart';
import 'package:flutter_app_example/profile/card_travel.dart';

// ignore: must_be_immutable
class CardTravelList extends StatelessWidget {

  String dummyDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 180.0
      ),
      height: 550.0,
      child: ListView(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0
          ),
          children: <Widget>[
            CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/mountain.jpeg"),
            CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/beach_palm.jpeg"),
            CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/mountain_stars.jpeg"),
            CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/river.jpeg"),
            CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/sunset.jpeg")
          ],
      ),
    );
  }
}
