import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() =>
    runApp(MyApp1(items: List<String>.generate(100, (i) => "item $i")));

class MyApp1 extends StatelessWidget {
  final List<String> items;
  //传参
  MyApp1({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Listview组件 动态列表使用方法'),
          ),
//        body: MyListView(), //纵向listview
          body: ListView.builder(
            itemCount: this.items.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text("我是 ${this.items[i]}"),
              );
            },
          ),
        ));
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Listview组件用法'),
          ),
//        body: MyListView(), //纵向listview
          body: Container(
            //横向listview
            height: 300,
            child: MyHorizontalListView(),
          )),
    );
  }
}

class MyVerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text("ac_unit"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("access_alarm"),
        ),
        ListTile(
          leading: Icon(Icons.access_time),
          title: Text("access_time"),
        ),
        ListTile(
          leading: Icon(Icons.accessible),
          title: Text("accessible"),
        )
      ],
    );
  }
}

class MyHorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 200,
          color: Colors.orange,
        ),
        Container(
          width: 200,
          color: Colors.green,
        ),
        Container(
          width: 200,
          color: Colors.red,
        ),
        Container(
          width: 200,
          color: Colors.yellow,
        )
      ],
    );
  }
}
