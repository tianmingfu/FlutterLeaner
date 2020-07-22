
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
        backgroundColor: Colors.amberAccent,
      ),
      body:Container(
        color: Colors.green,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hello world"),
                      Text("I am Jack"),
                    ],
                  ),
                ))
              ],
            ),
        ),
      )
//      Padding(
//        padding: EdgeInsets.all(19),
//        child: Center(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(text),
//              RaisedButton(
//                onPressed: ()=>Navigator.pop(context,"我是返回值"),
//                child: Text("返回"),
//              ),
//              LinearProgressIndicator(
//                backgroundColor: Colors.grey[200],
//                valueColor: AlwaysStoppedAnimation(Colors.blue),
//              ),
////进度条显示50%
//              LinearProgressIndicator(
//                backgroundColor: Colors.grey[200],
//                valueColor: AlwaysStoppedAnimation(Colors.blue),
//                value: .5,
//              ),
//              CircularProgressIndicator(
//                backgroundColor: Colors.grey[200],
//                valueColor: AlwaysStoppedAnimation(Colors.red),
//              ),
//              CircularProgressIndicator(
//                backgroundColor: Colors.grey[200],
//                valueColor: AlwaysStoppedAnimation(
//                  Colors.blue
//                ),
//                value: .5,
//              ),
//              SizedBox(
//                height: 3,
//                child: LinearProgressIndicator(
//                  backgroundColor: Colors.grey[200],
//                  valueColor: AlwaysStoppedAnimation(Colors.blue),
//                  value: .7,
//                ),
//              ),
//              SizedBox(
//                height: 100,
//                width: 100,
//                child: CircularProgressIndicator(
//                  backgroundColor: Colors.grey[200],
//                  valueColor: AlwaysStoppedAnimation(Colors.red),
//                  value: .6,
//                ),
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Text(" hello world "),
//                  Text(" I am Jack "),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                mainAxisSize: MainAxisSize.min,
//                children: [
//                  Text(" hello world "),
//                  Text(" I am Jack "),
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.end,
//                textDirection: TextDirection.rtl,
//                children: <Widget>[
//                  Text(" hello world "),
//                  Text(" I am Jack "),
//                ],
//              ),
//              Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                verticalDirection: VerticalDirection.up,
//                children: <Widget>[
//                  Text(" hello world ", style: TextStyle(fontSize: 30.0),),
//                  Text(" I am Jack "),
//                ],
//              ),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: [
//                  Text("Hi"),
//                  Text("world")
//                ],
//              )
//            ],
//          ),
//        ),
//      ),



    );
  }
}
