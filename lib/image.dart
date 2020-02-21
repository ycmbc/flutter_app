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
          title: Text('Image组件用法'),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 300,
            margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.red, width: 4, style: BorderStyle.solid)),
            child: Image.network(
              'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
              filterQuality: FilterQuality.high,
//              fit: BoxFit.fill, //填充
              fit: BoxFit.none,
//              repeat: ImageRepeat.repeat, //重复
              repeat: ImageRepeat.noRepeat,
              color: Colors.red,
              colorBlendMode: BlendMode.darken, //颜色混合模式
            ),
          ),
        ),
      ),
    );
  }
}
