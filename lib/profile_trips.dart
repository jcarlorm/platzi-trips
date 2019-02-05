import 'package:flutter/material.dart';
import 'package:flutter_app_example/profile/gradient_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientProfile("Profile")
      ],
    );
  }
}
