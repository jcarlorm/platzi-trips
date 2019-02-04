import 'package:flutter/material.dart';
import 'package:flutter_app_example/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    double starTop = 363.0;

    final description = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
          descriptionPlace,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
        top: starTop,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container (
      margin: EdgeInsets.only(
          top: starTop,
          right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container (
      margin: EdgeInsets.only(
          top: starTop,
          right: 3.0
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 360.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }

}