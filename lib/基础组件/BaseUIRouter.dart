

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseUIRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础组件"),
      ),
      body: Column(

       children: [
         FlatButton(
           child: Text("open TextWidget route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "TextWidget");
           },
         ),
         FlatButton(
           child: Text("open RasiseButtonWidget route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "RasiseButtonWidget");
           },
         ),
         FlatButton(
           child: Text("open SwitchAndCheckBoxTestRoute route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "SwitchAndCheckBoxTestRoute");
           },
         ),
         FlatButton(
           child: Text("open FormTestRoute route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "FormTestRoute");
           },
         ),
         FlatButton(
           child: Text("open FocusTestRoute route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "FocusTestRoute");
           },
         ),
         FlatButton(
           child: Text("open ProgressRoute route"),
           textColor: Colors.blue,
           onPressed: () {
             Navigator.pushNamed(context, "ProgressRoute");
           },
         ),
       ],
      ),
    );
  }
}
