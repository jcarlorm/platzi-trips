import 'package:flutter/material.dart';
import 'package:flutter_app_example/home_trips.dart';
import 'package:flutter_app_example/search_trips.dart';
import 'package:flutter_app_example/profile_trips.dart';
import 'package:flutter/cupertino.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrip(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;

          }

        },
      ),
    );
  }

}