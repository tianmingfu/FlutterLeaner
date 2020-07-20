
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
var args = ModalRoute.of(context).settings.arguments;
print("argsargsargsargs:"+args);
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(19),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: ()=>Navigator.pop(context,"我是返回值"),
                child: Text("返回"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
