import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetRouter extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<WidgetRouter>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabbar"),
        bottom: TabBar(
            //生成Tab菜单
            controller: _tabController,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          if (e == "新闻") {
            return Column(
              children: [
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "PaddingTestRoute")},
                  child: Text("PaddingTestRoute"),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ConstrainedBoxRouter")},
                  child: Text("ConstrainedBoxRouter"),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "DecoratedBoxRouter")},
                  child: Text("DecoratedBoxRouter"),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "TransformRouter")},
                  child: Text("变换（Transform）"),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ContainerRouter")},
                  child: Text("Container组件"),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "ScaffoldTabBarRouter")},
                  child: Text("Scaffold、TabBar底部导航"),
                ),
                RaisedButton(
                  onPressed: () => {Navigator.pushNamed(context, "Cliprouter")},
                  child: Text("Clip剪裁"),
                ),
              ],
            );
          }
          return Container(
            alignment: Alignment.center,
            child: Text(
              e,
              textScaleFactor: 5,
            ),
          );
        }).toList(),
      ),
    );
  }
}
//class WidgetRouter extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("容器类Widget"),
//      ),
//      body: Column(
//        children: [
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "PaddingTestRoute")},
//            child: Text("PaddingTestRoute"),
//          ),
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "ConstrainedBoxRouter")},
//            child: Text("ConstrainedBoxRouter"),
//          ),
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "DecoratedBoxRouter")},
//            child: Text("DecoratedBoxRouter"),
//          ),
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "TransformRouter")},
//            child: Text("变换（Transform）"),
//          ),
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "ContainerRouter")},
//            child: Text("Container组件"),
//          ),
//          RaisedButton(
//            onPressed: () => {Navigator.pushNamed(context, "ScaffoldTabBarRouter")},
//            child: Text("Scaffold、TabBar底部导航"),
//          ),
//          RaisedButton(
//            onPressed: () => {},
//            child: Text(""),
//          ),
//        ],
//      ),
//    );
//  }
//}
