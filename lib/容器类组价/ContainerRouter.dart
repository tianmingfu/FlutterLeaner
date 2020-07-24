
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ContainerRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerRouter"),
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50,left: 120),//容器外填充
            constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0),//卡片大小
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red,Colors.orange],
                  center: Alignment.topLeft,
                  radius: 0.98,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0,2.0),
                      blurRadius: 4.0
                  )
                ]
            ),
            transform: Matrix4.rotationZ(.2),
            alignment: Alignment.center,
            child: Text(
              "5.20",style: TextStyle(color: Colors.white,fontSize: 40.0),
            ),
          ),
          /*
          Container组件margin和padding属性的区别:
           */
          Spacer(flex: 1,),
          Text("========================================"),
          Container(
            margin: EdgeInsets.all(20.0), //容器外补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),
          Text("========================================"),
          Container(
            padding: EdgeInsets.all(20.0), //容器内补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),
          Spacer(flex: 1,),

        ],
      )
    );
  }
}
