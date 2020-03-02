import 'package:flutter/material.dart';
import '../ext/widget_ext.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hellow flutter",
      home: new Scaffold(
        appBar: new AppBar(title: Text("")),
        body: GridTest1(
          movieDataList: [
            new MovieData(
                "误杀",
                "http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",
                true,
                7.7),
            new MovieData(
                "误杀",
                "http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",
                true,
                7.7),
            new MovieData(
                "误杀",
                "http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",
                false,
                7.7),
            new MovieData(
                "误杀",
                "http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",
                false,
                7.7),
          ],
        ),
      ),
    );
  }
}

class ListTest1 extends StatelessWidget {
  final List<String> datas;

  ListTest1({Key key, @required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: datas.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        /*return ListTile(
          title: Text(datas[index]),
          leading: Icon(Icons.accessibility),
        );*/
        return new Container(
          width: 200,
          height: 300,
          color: Colors.amber,
          child: Text(datas[index]),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          width: 30.0,
          color: Colors.lightBlue,
        );
      },
    );
  }
}

class GridTest1 extends StatelessWidget {
  final List<MovieData> movieDataList;

  GridTest1({Key key, this.movieDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 5,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        itemCount: movieDataList.length,
        itemBuilder: (context, index) {
          final MovieData movieData = movieDataList[index];
          return Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: AspectRatio(
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        movieData.cover,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          child: movieData.isHot
                              ? Image.asset(
                                  'assets/images/movie_hot.png',
                                  fit: BoxFit.fill,
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                  aspectRatio: 2 / 3,
                ),
              ),
              Text(movieData.name),
            ],
          );
        });
  }
}

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 100,
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: Text("1"),
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.redAccent,
            alignment: Alignment.topLeft,
            child: Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text("1"),
                  padding: EdgeInsets.all(0.0),
                ),
                Expanded(
                    child: Text("2",
                        style: TextStyle(backgroundColor: Colors.blueAccent))),
                Text("3"),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text("1"),
                  padding: EdgeInsets.all(0.0),
                ),
                Text("2", style: TextStyle(backgroundColor: Colors.redAccent)),
                Text("3"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieData {
  String name;
  String cover;
  bool isHot;
  double score;

  MovieData(this.name, this.cover, this.isHot, this.score);
}
