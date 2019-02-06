import 'package:flutter/material.dart';
import 'package:flutter_app_example/profile/profile_details.dart';
import 'package:flutter_app_example/profile/button_bar.dart';
import 'package:flutter_app_example/profile/card_travel_list.dart';
import 'package:flutter_app_example/profile/card_travel.dart';

class GradientProfile extends StatelessWidget {

  final String title;

  GradientProfile(this.title);

  @override
  Widget build(BuildContext context) {

    final headerProfile = Container(
      height: 390.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: Container(
          margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 50.0
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0,
                        color: Colors.white
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white30,
                    size: 12.0,
                  )
                ],
              ),
              ProfileDetails("assets/img/people3.jpg", "Pathum Tzoo", "pathumtzoo@mail.com"),
              ButtonBarProfile(),

            ],
          )
      ),
    );

    return headerProfile;
  }
}
