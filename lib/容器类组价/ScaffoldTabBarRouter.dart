import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyDrawer.dart';

class ScaffoldTabBarRouter extends StatefulWidget {
  @override
  _ScaffoldTabBarRouterState createState() => _ScaffoldTabBarRouterState();
}

class _ScaffoldTabBarRouterState extends State<ScaffoldTabBarRouter> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaffoldTabBarRouter"),
        actions: [
          Builder(builder: (context) {
            return IconButton(
                icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
                onPressed: () {
                  // 打开抽屉菜单
                  Scaffold.of(context).openDrawer();
                });
          }),
          IconButton(icon: Icon(Icons.share), onPressed: (){

        })
        ],
      ),
      drawer: new Mydrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
      body: Column(
        children: [],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}
