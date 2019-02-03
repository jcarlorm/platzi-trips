import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Inicio 2.0"),
          ),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Image.network(
                  "https://img.blogs.es/anexom/wp-content/uploads/2018/06/android-publicidad-portada.jpg",
                fit: BoxFit.cover,
                height: double.infinity
              ),
              Center(
                child: Container(
                  height: 50.0,
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      "Android Image",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ]
          )
        )
      )
    );
  }
}
