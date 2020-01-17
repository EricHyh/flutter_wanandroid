import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'common/global.dart';

void main() {
  /*Global.init(() {
    runApp(MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      title: "App",
      home: Splash(),
    ));
  });*/

  runApp(MaterialApp(
    theme: ThemeData(backgroundColor: Colors.white),
    title: "App",
    home: MyApp(),
  ));
}
