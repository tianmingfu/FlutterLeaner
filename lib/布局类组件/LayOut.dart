
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayOutRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局类组件"),
      ),
      body: Column(
        children: [
          FlatButton(
            child: Text("open FlexLayoutRoute route"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "FlexLayoutRoute");
            },
          ),
          FlatButton(
            child: Text("open WrapRouter route"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "WrapRouter");
            },
          ),
          FlatButton(
            child: Text("open StackPositionedRouter route"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "StackPositionedRouter");
            },
          ),
          FlatButton(
            child: Text("open AlignRouter route"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "AlignRouter");
            },
          ),
        ],
      ),
    );
  }
}
