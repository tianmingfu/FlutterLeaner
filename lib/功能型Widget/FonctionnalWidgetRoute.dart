import 'package:flutter/material.dart';

class Fonctionnalwidgetroute extends StatelessWidget {
  Fonctionnalwidgetroute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fonctionnalwidgetroute"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "WillPopScopeTestRoute");
            },
            child: Text("导航返回拦截（WillPopScope）"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "InheritedWidgetTestRoute");
            },
            child: Text("数据共享（InheritedWidget）"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "NavRoute");
            },
            child: Text("颜色的定义 自定义导航栏"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "ThemeTestRoute");
            },
            child: Text("路由换肤功能"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "FutureBuilderTextRoute");
            },
            child: Text("异步UI更新FutureBuilder"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "StreamBuilderTextRoute");
            },
            child: Text("异步UI更新StreamBuilder"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "AlertDialogRoute");
            },
            child: Text("对话框弹框"),
          ),
        ],
      ),
    );
  }
}
