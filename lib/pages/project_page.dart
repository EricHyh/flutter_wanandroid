import 'package:flutter/material.dart';

import 'test.dart';

class ProjectPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProjectPageState();
  }
}

class ProjectPageState extends State<ProjectPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    // TODO: implement build
    return new Center(
      child: new ActPage(),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}