import 'package:flutter/material.dart';

class AlignRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("对齐与相对定位（Align）"),
        ),
        body:

//      Container(
////        height: 120.0,
////        width: 120.0,
////        color: Colors.blue[50],
////        child: Align(
////          alignment: Alignment.bottomRight,
////          child: FlutterLogo(
////            size: 60,
////          ),
////        ),
////      )



        //Align 组件可以调整子组件的位置，并且可以根据子组件的宽高来确定自身的的宽高
//        Container(
//          color: Colors.blue[50],
//          child: Align(
//            widthFactor: 2,
//            heightFactor: 2,
//            alignment: Alignment.bottomRight,
//            child: FlutterLogo(
//              size: 60,
//            ),
//          ),

    //Alignment可以通过其坐标转换公式将其坐标转为子元素的具体偏移坐标
      Container(
        color: Colors.red[500],
        child: Align(
          widthFactor: 2,
          heightFactor: 2,
          alignment: FractionalOffset(2, 1),
          child: FlutterLogo(
          size: 60,
        ),
      )



        ));
  }
}
