import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  void _tapRecognizer() {}

  @override
  Widget build(BuildContext context) {
//    Text("Hello world",
//      textScaleFactor: 1.5,
//    );

//   return  Text("Hello world! I'm Jack. "*4,
//      maxLines: 1,
//      overflow: TextOverflow.ellipsis,
//     style: TextStyle(
//       fontSize: 15,
//     ),
//    );

//    return Text("Hello world",
//      style: TextStyle(
//          color: Colors.blue,
//          fontSize: 18.0,
//          height: 1.2,
//          fontFamily: "Courier",
//          background: new Paint()..color=Colors.yellow,
//          decoration:TextDecoration.underline,
//          decorationStyle: TextDecorationStyle.dashed
//      ),
//    );

    return Container(
      child:     Text.rich(TextSpan(children: [
        TextSpan(text: "Home: "),
        TextSpan(
          text: "https://flutterchina.club",
          style: TextStyle(color: Colors.blue,fontSize: 12),
//              recognizer: _tapRecognizer
        ),
      ])),

    );
  }
}

