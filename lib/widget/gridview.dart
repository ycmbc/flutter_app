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
            title: Text('GridView组件用法'),
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 0.7,
            ),
            children: <Widget>[
              Image.network(
                  'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
                  fit: BoxFit.cover),
            ],
          )),
//          body: GridView.count(
//            crossAxisCount: 3, //列数
//            crossAxisSpacing: 2, //左右间距
//            mainAxisSpacing: 2, //上下间距
//            childAspectRatio: 1, //横纵比
//            padding: EdgeInsets.all(20),
//            children: <Widget>[
//              Container(
//                color: Colors.orange,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.red,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.blue,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.black,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.yellow,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.cyan,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//              Container(
//                color: Colors.pinkAccent,
//                alignment: Alignment.center,
//                child: Text('212', style: TextStyle(color: Colors.white)),
//              ),
//            ],
//          )),
    );
  }
}
