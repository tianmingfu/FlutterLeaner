import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget {
  WillPopScopeTestRoute({Key key}) : super(key: key);
  @override
  _WillPopScopeTestRouteState createState() => _WillPopScopeTestRouteState();
}

class _WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  
  DateTime _lastPressedAt;//上次点击的时间
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WillPopScopeTestRoute"),
      ),
      body: WillPopScope(
          child: Container(
            alignment: Alignment.center,
            child: Text("1秒内连续按两次返回键退出"),
          ),
          onWillPop: () async{
            if(_lastPressedAt == null || DateTime.now().difference(_lastPressedAt)>Duration(seconds: 1)){
              _lastPressedAt = DateTime.now();
              return false;
            }
            return true;
          },
      ),
    );
  }
}
