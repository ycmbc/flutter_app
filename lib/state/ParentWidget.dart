import 'package:flutter/material.dart';

//ParentWidget为TapboxB管理状态

//ParentWidgetState 类:
//
//为TapboxB 管理_active状态。
//实现_handleTapboxChanged()，当盒子被点击时调用的方法。
//当状态改变时，调用setState()更新UI。
//TapboxB 类:
//
//继承StatelessWidget类，因为所有状态都由其父组件处理。
//当检测到点击时，它会通知父组件。
class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

//------------------------- TapboxB ----------------------------------

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget管理子Widget状态"),
      ),
      body: GestureDetector(
        onTap: _handleTap,
        child: new Container(
          child: new Center(
            child: new Text(
              active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
