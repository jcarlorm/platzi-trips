import 'package:flutter/material.dart';
import 'package:flutter_app_example/gradient_back.dart';
import 'package:flutter_app_example/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }
}
