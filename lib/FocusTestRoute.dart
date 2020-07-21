import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusTestRoute extends StatefulWidget {
  @override
  _FocusTestRouteState createState() => new _FocusTestRouteState();
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;
  TextEditingController _pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        appBar: AppBar(
          title:Text("Form Test"),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            hintColor: Colors.grey[200],
              inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(color: Colors.grey),//定义label字体样式
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)//定义提示文本样式
              )
          ),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)
                ),
                obscureText: true,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "密码",
                    hintText: "您的登录密码",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                ),
                obscureText: true,
              )
            ],
          ),
        )
//    Padding(
//          padding: EdgeInsets.all(15),
//          child: Column(
//            children: <Widget>[
//              TextField(
//                autofocus: true,
//                focusNode: focusNode1,
//                decoration: InputDecoration(
//                  labelText: "input1"
//                ),
//                obscureText: true,
//              ),
//              TextField(
//                focusNode: focusNode2,//关联focusNode2
//                decoration: InputDecoration(
//                    labelText: "input2"
//                ),
//                obscureText: true,
//              ),
//              Builder(builder: (ctx){
//                return Column(
//                  children: [
//                    RaisedButton(
//                      child: Text("移动焦点"),
//                      onPressed: () {
//                        //将焦点从第一个TextField移到第二个TextField
//                        // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
//                        // 这是第二种写法
//                        if(null == focusScopeNode){
//                          focusScopeNode = FocusScope.of(context);
//                        }
//                        focusScopeNode.requestFocus(focusNode2);
//                      },
//                    ),
//                    RaisedButton(
//                      child: Text("隐藏键盘"),
//                      onPressed: () {
//                        // 当所有编辑框都失去焦点时键盘就会收起
//                        focusNode1.unfocus();
//                        focusNode2.unfocus();
//                      },
//                    ),
//                    TextField(
//                      decoration: InputDecoration(
//                        labelText: "请输入用户名",
//                        prefixIcon: Icon(Icons.person),
//                        // 未获得焦点下划线设为灰色
//                        enabledBorder: UnderlineInputBorder(
//                          borderSide: BorderSide(color: Colors.grey),
//                        ),
//                        //获得焦点下划线设为蓝色
//                        focusedBorder: UnderlineInputBorder(
//                          borderSide: BorderSide(color: Colors.blue),
//                        ),
//                      ),
//                      obscureText: true,
//                    ),
//                  ],
//                );
//              })
//            ],
//          ),
//        )
    );
  }


}