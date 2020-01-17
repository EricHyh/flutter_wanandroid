import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_page.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return new Image.asset(
      'assets/images/splash_bg.png',
      fit: BoxFit.fill,
    );*/

    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Align(
        alignment: Alignment.topCenter,
        child: new Image.asset(
          'assets/images/splash_bg.png',
          fit: BoxFit.fill,
        ),
      ),
    );

    //return new Center(child: new Text("hellow"),);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    new Future.delayed(
      const Duration(seconds: 2),
      () => {
        Navigator.of(context).pushReplacement(
          new MaterialPageRoute(
            builder: (BuildContext context) {
              return new MainPage();
            },
          ),
        ),
      },
    );
    return AnnotatedRegion(
      value: new SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Colors.white),
        home: Splash(),
      ),
    );
  }
}
