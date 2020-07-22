import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPositionedRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Stack绝对定位"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child:


//        Stack(
//          alignment: Alignment.center,
////          fit: StackFit.expand,
//          children: [
//            Container(
//              child: Text(
//                "Hello world",
//                style: TextStyle(color: Colors.white),
//              ),
//              color: Colors.red,
//            ),
//            Positioned(
//              child: Text("I am Jack"),
//              left: 18,
//            ),
//            Positioned(
//              child: Text("Your friend"),
//              top: 18,
//            )
//          ],
//        ),

        Stack(
          alignment:Alignment.center ,
          fit: StackFit.expand, //未定位widget占满Stack整个空间
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            ),
            
          ],
        ),



      ),
    );
  }
}
