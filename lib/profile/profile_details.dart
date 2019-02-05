import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {

  final String pathProfile;
  final String userName;
  final String userEmail;

  ProfileDetails(this.pathProfile, this.userName, this.userEmail);

  @override
  Widget build(BuildContext context) {

    final userPicture = Container(
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathProfile),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 2.0,
          color: Colors.white
        )
      ),
    );

    final userDetail = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            userName,
            style: TextStyle(
              fontFamily: "Lato",
              color: Colors.white,
              fontSize: 16
            ),
          ),
          Text(
            userEmail,
            style: TextStyle(
              fontFamily: "Lato",
              color: Colors.white30,
              fontSize: 13
            ),
          )
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 15.0
      ),
      child: Row(
        children: <Widget>[
          userPicture,
          userDetail,
        ],
      ),
    );
  }
}
