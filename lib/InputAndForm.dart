import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => new _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {

  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    _unameController.addListener(() {
      print("_unameControlle1r"+_unameController.text);
      print("_pwdControlle1r"+_pwdController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Form Test"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            controller: _unameController,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
            onChanged: (v){
              print("onChange_unameController:$v");
            },
            obscureText: true,

          ),
          TextField(
            controller: _pwdController,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
            onChanged: (v){
              print("onChange_pwdController:$v");
            }
          ),
        ],
      )
    );
  }
}