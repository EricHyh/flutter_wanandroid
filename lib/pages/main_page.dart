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
  PageController pageController;
  int _currentIndex = 0;

  List<Widget> _pageList = [
    HomePage(),
    ProjectPage(),
    MomentsPage(),
    DiscoveryPage(),
  ];

  @override
  void initState() {
    super.initState();
    this.pageController = new PageController();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTap(int index) {
    pageController.jumpToPage(index);
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: _onPageChanged,
          children: _pageList,
          physics: NeverScrollableScrollPhysics(), // 禁止滑动
        ),
        bottomNavigationBar: new BottomNavigationBar(
          selectedItemColor: Color(0xFFFB7299),
          unselectedItemColor: Color(0xFF757575),
          selectedFontSize: 12,
          iconSize: 28,
          unselectedFontSize: 12,
          currentIndex: this._currentIndex,
          //配置对应的索引值选中
          onTap: _onTap,
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
