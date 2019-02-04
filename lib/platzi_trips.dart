import 'package:flutter/material.dart';
import 'package:flutter_app_example/home_trips.dart';
import 'package:flutter_app_example/search_trips.dart';
import 'package:flutter_app_example/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
      HomeTrips(),
      SearchTrip(),
      ProfileTrips()
  ];

  void onTapTapped(int index)
  {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          currentIndex: indexTap,
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
            )
          ],
        ),
      ),
    );
  }
}
