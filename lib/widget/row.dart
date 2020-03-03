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
          title: Text('Row水平方向布局用法'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              //Expanded填充，类似weight属性，
              child: RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text('红色按钮'),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                color: Colors.orange,
                child: Text('橙色按钮'),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text('蓝色按钮'),
              ),
            ),
            RaisedButton(
              //不加Expanded，内容有多大，就显示多大
              onPressed: () {},
              color: Colors.black,
              child: Text(
                '黑色按钮黑色按钮黑色按钮',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
