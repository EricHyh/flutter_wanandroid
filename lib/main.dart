import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'common/global.dart';
import 'test/my_app.dart' as my_app;

void main() {
  /*Global.init(() {
    runApp(MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      title: "App",
      home: MyApp(),
    ));
  });*/

  runApp(new my_app.MyApp());

}
