import 'package:flutter/material.dart';
import 'package:flutter_app/%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E4%B8%8E%E9%80%9A%E7%9F%A5/%E4%BA%8B%E4%BB%B6%E6%80%BB%E7%BA%BF/EventBus.dart';

class LoginRoute extends StatefulWidget {
  LoginRoute({Key key}) : super(key: key);

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {

  var bus = new EventBus();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //订阅登录事件
    bus.on("login", (arg) {
      print("login ${arg}");
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginRoute"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
          bus.emit("login","password:888888");
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
