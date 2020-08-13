import 'package:flutter/material.dart';


/*
我们以拖动手势为例，同时识别水平和垂直方向的拖动手势，当用户按下手指时就会触发竞争（水平方向和垂直方向），
一旦某个方向“获胜”，则直到当次拖动手势结束都会沿着该方向移动。代码如下：
 */
class BothDirectionTestRoute extends StatefulWidget {
  BothDirectionTestRoute({Key key}) : super(key: key);

  @override
  _BothDirectionTestRouteState createState() => _BothDirectionTestRouteState();

}

class _BothDirectionTestRouteState extends State<BothDirectionTestRoute> {

  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势竞争"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A")),
              //垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _top += details.delta.dy;
                });
              },
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
