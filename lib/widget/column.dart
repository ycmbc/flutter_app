import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取设备屏幕尺寸
    final size = MediaQuery.of(context).size;
    final width = size.width.floor();
    final height = size.height.floor();
    print('width: $width, height: $height');
    return Scaffold(
      appBar: AppBar(
        title: Text('Column水平方向布局用法'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('flutter学习中'),
          Expanded(
            child: Container(
              width: width.ceilToDouble(),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('我占用屏幕最大范围'),
            ),
          ),
          Text('我要开始学习flutter'),
          Text('flutters'),
        ],
      ),
    );
  }
}
