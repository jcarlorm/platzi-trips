import 'package:flutter/material.dart';
import 'package:flutter_app_example/profile/buttons/mark_button.dart';
import 'package:flutter_app_example/profile/buttons/circle_button.dart';

class ButtonBarProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final travel = CircleButton(40, 40, Icon(
        Icons.card_travel,
        size: 20.0,
        color: Colors.indigo
    ), Colors.white30);

    final more = CircleButton(55, 55, Icon(
        Icons.add,
        size: 35.0,
        color: Colors.indigo
    ), Colors.white);

    final mail = CircleButton(40, 40, Icon(
        Icons.mail_outline,
        size: 20.0,
        color: Colors.indigo
    ), Colors.white30);

    final person = CircleButton(40, 40, Icon(
        Icons.person,
        size: 20.0,
        color: Colors.indigo
    ), Colors.white30);


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        MarkButton(),
        travel,
        more,
        mail,
        person
      ],
    );
  }
}
