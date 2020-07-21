import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RasiseButtonWidget extends StatefulWidget {
  RasiseButtonWidget({
    Key key,
  }) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<RasiseButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮练习"),
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            FlatButton(onPressed: ()=>{}, child: Text("normal")),
            OutlineButton(onPressed: ()=>{},child: Text("normal")),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: (){}),
            RaisedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送"),
              onPressed: _onPressed,
            ),
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text("添加"),
              onPressed: _onPressed,
            ),
            FlatButton.icon(
              label: Text("详情"),
              icon: Icon(Icons.info),
              onPressed: _onPressed,
            ),          ],
        ),
      ),
    );
  }

  void _onPressed() {
    print("_onpressed_onpressed_onpressed_onpressed_onpressed_onpressed_onpressed_onpressed");
  }
}
