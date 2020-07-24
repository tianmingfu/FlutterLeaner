import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;
class TransformRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TransformRouter"),
      ),
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
            color: Colors.black,
            child: new Transform(
              alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
              transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          /*
          平移
          Transform.translate接收一个offset参数，可以在绘制时沿x、y轴对子组件平移指定的距离。
           */
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            //默认原点为左上角，左移20像素，向上平移5像素
            child: Transform.translate(
              offset: Offset(-20.0, -5.0),
              child: Text("Hello world"),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          /*
          旋转
          Transform.rotate可以对子组件进行旋转变换，如：
           */
          DecoratedBox(
            decoration:BoxDecoration(color: Colors.red),
            child: Transform.rotate(
              //旋转90度
              angle:math.pi/2 ,
              child: Text("Hello world"),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          /*
          缩放
          Transform.scale可以对子组件进行缩小或放大，如：
           */
      DecoratedBox(
          decoration:BoxDecoration(color: Colors.red),
          child: Transform.scale(
              scale: 1.5, //放大到1.5倍
              child: Text("Hello world")
          )
      ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                  decoration:BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                      scale: 1.5,
                      child: Text("Hello world")
                  )
              ),
              Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
            ],
          ),
         /*
          RotatedBox
          RotatedBox和Transform.rotate功能相似，它们都可以对子组件进行旋转变换，但是有一点不同：RotatedBox的变换是在layout阶段，会影响在子组件的位置和大小。我们将上面介绍Transform.rotate时的示例改一下：
          */
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                //将Transform.rotate换成RotatedBox
                child: RotatedBox(
                  quarterTurns: 1, //旋转90度(1/4圈)
                  child: Text("Hello world"),
                ),
              ),
              Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
            ],
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
