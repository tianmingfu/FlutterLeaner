import 'package:flutter/material.dart';

class GestureDetectorTestRoute extends StatefulWidget {
  GestureDetectorTestRoute({Key key}) : super(key: key);

  @override
  _GestureDetectorTestRouteState createState() =>
      _GestureDetectorTestRouteState();
}

class _GestureDetectorTestRouteState extends State<GestureDetectorTestRoute> {

  String _operation = "No Gesture detected";//保存事件名

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("手势检测（点击、双击、长按）"),
      ),
      body:Column(
        children: [
          Center(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 200.0,
                height: 100.0,
                child: Text(_operation,style: TextStyle(color: Colors.white),),
              ),
              onTap: ()=>updateText("Tap"),//点击
              onDoubleTap: () => updateText("DoubleTap"), //双击
              onLongPress: () => updateText("LongPress"), //长按
            ),
          ),
          RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "Drag"),
              child: Text("拖动、滑动"),
          ),
           RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "DragVertical"),
              child: Text("单一方向拖动"),
          ),
           RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "ScaleTestRouteState"),
              child: Text("缩放"),
          ),
          RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "GestureRecognizerTestRouteState"),
              child: Text("GestureRecognizerTestRouteState"),
          ),
          RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "BothDirectionTestRoute"),
              child: Text("手势竞争"),
          ),
          RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "GestureConflictTestRouteState"),
              child: Text("手势冲突"),
          ),
          RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "LoginRoute"),
              child: Text("LoginRoute"),
          ),

        ],
      )
    );
  }

  updateText(String text) {
    //更新显示的事件名
    setState(() {
      _operation = text;
    });
  }
}
