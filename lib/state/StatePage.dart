import 'package:flutter/material.dart';

//StatePage类:
//
//管理_active 状态。
//实现 _handleTapboxChanged() ，当盒子被点击时调用。
//当点击盒子并且_active状态改变时调用setState()更新UI。

//_TapboxCState 对象:
//管理_highlight 状态。
//GestureDetector监听所有tap事件。当用户点下时，它添加高亮（深绿色边框）；当用户释放时，会移除高亮。
//当按下、抬起、或者取消点击时更新_highlight状态，调用setState()更新UI。
//当点击时，将状态的改变传递给父组件。
class StatePage extends StatefulWidget {

  @override
  _StatePageState createState() => new _StatePageState();
}

class _StatePageState extends State<StatePage> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("混合管理（父Widget和子Widget都管理状态）"),
        ),
        body: new Container(
          child: new TapboxC(
            active: _active,
            onChanged: _handleTapboxChanged,
          ),
        )
    );
  }
}

class TapboxC extends StatefulWidget {
  TapboxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _TapboxCState createState() => new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // 在按下时添加绿色边框，当抬起时，取消高亮
    return new GestureDetector(
      onTapDown: _handleTapDown,
      // 处理按下事件
      onTapUp: _handleTapUp,
      // 处理抬起事件
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? new Border.all(
                  color: Colors.teal[700],
                  width: 10.0,
                )
              : null,
        ),
      ),
    );
  }
}
