import 'package:flutter/material.dart';

class Scrollview extends StatelessWidget {
  Scrollview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollview"),
      ),
      body: Column(
      children: [
        RaisedButton(
            onPressed:() { Navigator.pushNamed(context, "SingleChildScrollViewRouter");},
            child: Text("SingleChildScrollViewRouter"),
        ),
        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "Listviewrouter");},
          child: Text("Listviewrouter"),
        ),

        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "Infinitelistview");},
          child: Text("无限加载列表"),
        ),

        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "Gridview");},
          child: Text("Gridview"),
        ),
        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "Infinitegridview");},
          child: Text("Infinitegridview异步数据源（如网络）分批获取一些Icon"),
        ),
        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "CustomScrollviewRoute");},
          child: Text("CustomScrollviewRoute"),
        ),
        RaisedButton(
          onPressed:() { Navigator.pushNamed(context, "ScrollControllerRoute");},
          child: Text("滚动监听及控制"),
        ),
      ],
      ),
    );
  }
}
