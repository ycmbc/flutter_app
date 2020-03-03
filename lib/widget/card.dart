import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      color: Colors.pinkAccent,
      child: Column(
        children: <Widget>[
          ListTile(
            title:
                Text('成都市武侯区', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('街道地址是XXXXXXXXXXXXXXXX'),
            leading: Icon(Icons.account_box, color: Colors.white),
          ),
          Divider(),
          ListTile(
            title:
                Text('成都市高新区', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('街道地址是XXXXXXXXXXXXXXXX'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title:
                Text('成都市成华区', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('街道地址是XXXXXXXXXXXXXXXX'),
            leading: Icon(Icons.account_box, color: Colors.black),
          )
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('card布局用法'),
          ),
          body: Center(child: card)),
    );
  }
}
