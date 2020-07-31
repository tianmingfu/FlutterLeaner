import 'package:flutter/material.dart';

class NavRoute extends StatefulWidget {
  NavRoute({Key key}) : super(key: key);

  @override
  _NavRouteState createState() => _NavRouteState();
}

class _NavRouteState extends State<NavRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavRoute"),
      ),
      body: Column(
        children: [
          //背景为蓝色，则title自动为白色
          NavBar(color: Colors.blue[50], title: "标题"),
          Spacer(),
          NavBar(color: Colors.blue[200], title: "标题"),
          Spacer(),
          NavBar(color: Colors.blue[500], title: "标题"),
          Spacer(),
          NavBar(color: Colors.blue[900], title: "标题"),
          Spacer(),
          //背景为白色，则title自动为黑色
          NavBar(color: Colors.white, title: "标题"),
          Spacer(),
          NavBar(color: Colors.red, title: "标题"),
          Spacer(),
          NavBar(color: Colors.green[900], title: "标题"),
        ],
      ),
    );
  }
}



class NavBar extends StatelessWidget {
  final String title;
  final Color color;

  NavBar({Key key ,this.color,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 52,
      ),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 3,
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}