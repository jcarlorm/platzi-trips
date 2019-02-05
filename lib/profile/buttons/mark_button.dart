import 'package:flutter/material.dart';

class MarkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(
            top: 20.0
        ),
        height: 40.0,
        width: 40.0,
        child: Center(
          child: Icon(
            Icons.bookmark_border,
            color: Colors.indigo,
            size: 20.0,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            color: Colors.white
        )
    );
  }
}
