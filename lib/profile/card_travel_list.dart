import 'package:flutter/material.dart';
import 'package:flutter_app_example/profile/card_travel.dart';

// ignore: must_be_immutable
class CardTravelList extends StatelessWidget {

  String dummyDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 270.0,
        left: 20,
        right: 20
      ),
      height: 250.0,
      child: ListView(
          children: <Widget>[
          CardTravel("Knucles Mountains Range", dummyDescription, "12828" , "assets/img/mountain.jpeg")
        ],
      ),
    );
  }
}
