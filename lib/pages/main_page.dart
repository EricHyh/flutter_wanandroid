import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'project_page.dart';
import 'moments_page.dart';
import 'discovery_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    ProjectPage(),
    MomentsPage(),
    DiscoveryPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: _pageList[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          selectedItemColor: Color(0xFFFB7299),
          unselectedItemColor: Color(0xFF757575),
          selectedFontSize: 12,
          iconSize: 28,
          unselectedFontSize: 12,
          currentIndex: this._currentIndex,
          //配置对应的索引值选中
          onTap: (int index) {
            setState(() {
              //改变状态
              this._currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              title: Text("首页"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("项目"),
              icon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              title: Text("动态"),
              icon: Icon(Icons.all_out),
            ),
            BottomNavigationBarItem(
              title: Text("发现"),
              icon: Icon(Icons.query_builder),
            ),
          ],
        ),
      ),
    );
  }
}
