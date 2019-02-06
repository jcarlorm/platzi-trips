import 'package:flutter/material.dart';

class CardTravel extends StatelessWidget {

  final String lugar;
  final String descripcion;
  final String pasos;
  final String ruta;
  CardTravel(this.lugar, this.descripcion, this.pasos, this.ruta);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      margin: EdgeInsets.only(
        top: 20.0
      ),
      height: 220.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ruta)
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow (
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );
    return Stack(
      children: <Widget>[
        card
      ],
    );
  }
}
