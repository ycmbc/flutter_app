import 'package:flutter/material.dart';
import 'package:flutter_app/routeTest/MainPage.dart';

class NewRoute extends StatelessWidget {
  NewRoute({Key key, this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${product.title}"),
        ),
        body: Column(
          children: <Widget>[
            //加载本地图片，
            //1.先在pubspec.yaml文件注册文件， 在用asset方法显示图片
            Image.asset(
              'images/avater.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
            RaisedButton(
              child: Text('返回上一页'),
              onPressed: () {
                Navigator.pop(context, "返回的内容");
              },
            ),
          ],
        ));
  }
}
