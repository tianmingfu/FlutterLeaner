import 'package:flutter/material.dart';

class ScaleTestRouteState extends StatefulWidget {
  ScaleTestRouteState({Key key}) : super(key: key);

  @override
  _ScaleTestRouteStateState createState() => _ScaleTestRouteStateState();
}

class _ScaleTestRouteStateState extends State<ScaleTestRouteState> {

  double _width = 200.0; //通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaleTestRouteState"),
      ),
      body: Center(
        child: GestureDetector(
          child: Image.asset("images/person.png",width: _width,),
          onScaleUpdate: (ScaleUpdateDetails details){
            setState(() {
              //缩放倍数在0.8到10倍之间
              _width=200*details.scale.clamp(.8, 10.0);
            });
          },
        ),
      ),
    );
  }
}
