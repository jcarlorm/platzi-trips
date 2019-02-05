import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final double height;
  final double width;
  final Icon icono;
  final Color color;

  CircleButton(this.height, this.width, this.icono, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: 20.0
        ),
        height: height,
        width: width,
        child: Center(
          child: icono,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            color: color
        )
    );
  }
}
