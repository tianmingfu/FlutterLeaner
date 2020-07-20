import 'package:flutter/material.dart';
import 'package:flutter_app/TapBoxAState.dart';
import 'package:flutter_app/TipRoute.dart';

import 'ParentWidget.dart';
import 'ParentWidgetC.dart';

class NewRoute extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("This is new router"),
                RaisedButton(onPressed: () async {
                  
                  
                  var result = await Navigator.of(context).pushNamed("tip2",arguments: "1hihihihiihihi");
                  
//                  var result = await Navigator.push(context, MaterialPageRoute(
//                    builder: (context){
//                      return TipRoute(text: "我是提示XXXXXX");
//                    }
//                  ));
                  print('路有返回值$result');
                },
                child: Text("打开提示页"),
                ),
              TapboxA(),
              Text(""),
//              ParentWidget(),
              ParentWidgetC(),
            ],
          ),
        ),
      )
    );
  }
}