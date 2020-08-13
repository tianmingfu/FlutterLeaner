import 'package:flutter/material.dart';

class GestureConflictTestRouteState extends StatefulWidget {
  GestureConflictTestRouteState({Key key}) : super(key: key);

  @override
  _GestureConflictTestRouteStateState createState() =>
      _GestureConflictTestRouteStateState();
}

class _GestureConflictTestRouteStateState
    extends State<GestureConflictTestRouteState> {

  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势冲突"),
      ),
      body: Stack(
        children: [
            Positioned(
                left: _left,
                child: GestureDetector(
                  child: CircleAvatar(child: Text("A"),),//要拖动和点击的widget
                  onHorizontalDragUpdate: (DragUpdateDetails details){
                    setState(() {
                      _left += details.delta.dx;
                    });
                  },
                  onHorizontalDragEnd: (details){
                    print("onHorizontalDragEnd");
                  },
                  onTapDown: (details){
                    print("onTapDown");
                  },
                  onTapUp: (details){
                    print("onTapUp");
                  },
                )
            )
        ],
      ),
    );
  }
}
