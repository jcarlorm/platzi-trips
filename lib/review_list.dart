import 'package:flutter/material.dart';
import 'package:flutter_app_example/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String dummyComment =  "There is amazing place in sri lamda";
    String dummyDetails = "1 review 5 photos";

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review("assets/img/people.jpg", "Varuna Yasas", dummyDetails, dummyComment),
          Review("assets/img/people2.jpg", "Jose", dummyDetails, dummyComment),
          Review("assets/img/people3.jpg", "Gustavo", dummyDetails, dummyComment),
        ],
    );
  }
}
