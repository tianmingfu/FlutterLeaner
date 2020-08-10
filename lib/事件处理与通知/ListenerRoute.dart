import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListenerRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //定义一个状态，保存当前指针位置
    PointerEvent _event;
    return Scaffold(
      appBar: AppBar(
        title: Text("原始指针事件处理"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: add(),
          child: Text("ss"),
        ),
      )
    );
  }

  add() {
    
  }
}
//
//Listener(
//child: Container(
//alignment: Alignment.center,
//color: Colors.blue,
//width: 300.0,
//height: 150.0,
//child: Text(_event?.toString()??"",style: TextStyle(color: Colors.white)),
//),
//onPointerDown: (PointerDownEvent event) => setState(()=>_event=event),
//onPointerMove: (PointerMoveEvent event) => setState(()=>_event=event),
//onPointerUp: (PointerUpEvent event) => setState(()=>_event=event),
//),
