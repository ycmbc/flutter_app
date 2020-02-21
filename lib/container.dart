import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('container组件用法'),
        ),
        body: Center(
          child: Container(
            child: Text(
              "container包含内容",
              style: TextStyle(fontSize: 16),
            ),
            alignment: Alignment.topLeft,
            width: 500,
            height: 300,
//            color: Colors.blue,
            padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
            margin: const EdgeInsets.fromLTRB(50, 0, 20, 0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green, Colors.purple]),
                border: Border.all(
                    color: Colors.red, width: 4, style: BorderStyle.solid)),
          ),
        ),
      ),
    );
  }
}
