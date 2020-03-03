import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: FractionalOffset(0.5, 0.8), //层叠布局元素位置
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://user-gold-cdn.xitu.io/2019/4/15/16a1ec70cde216ee?w=454&h=900&f=png&s=604764'),
          radius: 90,
        ),
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('这是个头像'),
        ),
        Text('12123123'),
        Positioned(  //定位修改个别元素位置
          top: 10,
          left: 10,
          child: Text('flutter'),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Text('fluttersssssssss'),
        )
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack布局用法'),
        ),
        body: stack,
      ),
    );
  }
}
