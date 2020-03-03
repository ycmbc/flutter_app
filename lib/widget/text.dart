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
          title: Text('text组件用法'),
        ),
        body: Center(
          child: Text(
            "持续学习flutter中,持续学习flutter中,持续学习flutter中,持续学习flutter中,持续学习flutter中",
            textAlign: TextAlign.start, //对齐方式
            maxLines: 1, //最大行数
            overflow: TextOverflow.ellipsis, //省略号
            style: TextStyle(
                fontSize: 25,
                //字体大小
                color: Colors.orange,
                //颜色
                decoration: TextDecoration.underline,
                //添加下划线
                decorationStyle: TextDecorationStyle.solid,
                //实线
                decorationColor: Colors.blue //下划线颜色
                ),
          ),
        ),
      ),
    );
  }
}
