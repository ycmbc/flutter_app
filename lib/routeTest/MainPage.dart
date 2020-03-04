import 'package:flutter/material.dart';
import 'package:flutter_app/routeTest/NewPageRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航数据传递和接收',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          products: List.generate(20, (i) => Product('商品 $i', '商品描述详情，编号 $i'))),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.products}) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: this.products.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${this.products[i].title}"),
              onTap: () {
                _navigateResult(context, this.products[i]);
              },
            );
          },
        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            FlatButton(
//              child: Text("点击打开新页面"),
//              textColor: Colors.blue,
//              onPressed: () {
//                //导航到新路由
////                Navigator.push(context, MaterialPageRoute(builder: (context) {
////                  return NewRoute().build(context);
////                }));
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => new NewRoute()));
//              },
//            )
//          ],
//        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, child: Text("sssssss"));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _navigateResult(BuildContext context, Product p) async {
    final result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => new NewRoute(product: p)));

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(result),
    ));
  }
}

class Product {
  String title;
  String description;

  Product(this.title, this.description);

  @override
  String toString() {
    return 'Product{title: $title, description: $description}';
  }
}
