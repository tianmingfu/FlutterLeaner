import 'package:flutter/material.dart';

class DragVertical extends StatefulWidget {
  DragVertical({Key key}) : super(key: key);

  @override
  _DragVerticalState createState() => _DragVerticalState();
}

class _DragVerticalState extends State<DragVertical> {

  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DragVertical"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: _top,
              child: GestureDetector(
                child: CircleAvatar(child: Text("A"),),
                //垂直方向拖动事件
                onVerticalDragUpdate: (DragUpdateDetails details){
                  setState(() {
                    _top += details.delta.dy;
                  });
                },
              )
          )
        ],
      ),
    );
  }
}
