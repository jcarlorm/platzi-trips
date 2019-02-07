import 'package:flutter/material.dart';
import 'package:flutter_app_example/floating_action_button_green.dart';

class CardTravel extends StatelessWidget {

  final String lugar;
  final String descripcion;
  final String pasos;
  final String ruta;
  CardTravel(this.lugar, this.descripcion, this.pasos, this.ruta);

  @override
  Widget build(BuildContext context) {

    final descriptionCard = Container(
      height: 100,
      width: 260.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        shape: BoxShape.rectangle,
        color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              lugar,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 17.0,
                  fontWeight: FontWeight.w900
              ),
            ),
            Text(
              descripcion,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 9,
              ),
            ),
            Text(
              "Steps $pasos",
              style: TextStyle(
                fontSize: 13,
                fontFamily: "Lato",
                fontWeight: FontWeight.w600,
                color: Color(0xffe4b479)
              ),
            )
          ],
        ),
      )
    );

    final card = Container(
      margin: EdgeInsets.only(
        top: 20.0
      ),
      height: 210.0,
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

    final cardTravel = Container(
      height: 280.0,
      child: Stack(
        alignment: Alignment(0.0,1.6),
        children: <Widget>[
          card,
          Stack(
            alignment: Alignment(0.8, 1.8),
            children: <Widget>[
              descriptionCard,
              FloatingActionButtonGreen()
            ],
          )
        ],
      ),
    );

    return cardTravel;
  }
}
