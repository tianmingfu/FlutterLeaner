import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器类Widget"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => {Navigator.pushNamed(context, "PaddingTestRoute")},
            child: Text("PaddingTestRoute"),
          ),
          RaisedButton(
            onPressed: () => {Navigator.pushNamed(context, "ConstrainedBoxRouter")},
            child: Text("ConstrainedBoxRouter"),
          ),
          RaisedButton(
            onPressed: () => {Navigator.pushNamed(context, "DecoratedBoxRouter")},
            child: Text("DecoratedBoxRouter"),
          ),
          RaisedButton(
            onPressed: () => {},
            child: Text(""),
          ),
          RaisedButton(
            onPressed: () => {},
            child: Text(""),
          ),
          RaisedButton(
            onPressed: () => {},
            child: Text(""),
          ),
          RaisedButton(
            onPressed: () => {},
            child: Text(""),
          ),
        ],
      ),
    );
  }
}
