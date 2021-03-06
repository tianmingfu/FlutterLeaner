import 'package:flutter/material.dart';
import 'package:flutter_app/%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/BaseUIRouter.dart';
import 'package:flutter_app/%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/%E5%AF%B9%E9%BD%90%E4%B8%8E%E7%9B%B8%E5%AF%B9%E5%AE%9A%E4%BD%8D.dart';
import 'package:flutter_app/%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/%E5%B1%82%E5%8F%A0%E5%B8%83%E5%B1%80.dart';
import 'package:flutter_app/%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/%E5%BC%B9%E6%80%A7%E5%B8%83%E5%B1%80.dart';
import 'package:flutter_app/%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/%E6%B5%81%E5%BC%8F%E5%B8%83%E5%B1%80.dart';
import 'package:flutter_app/%E5%B8%83%E5%B1%80%E7%B1%BB%E7%BB%84%E4%BB%B6/LayOut.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/%E5%9F%BA%E7%A1%80%E7%BB%84%E4%BB%B6/TipRoute.dart';
import 'package:english_words/english_words.dart';

import '事件处理与通知/事件总线/LoginRoute.dart';
import '事件处理与通知/手势/BothDirectionTestRoute.dart';
import '事件处理与通知/手势/Drag.dart';
import '事件处理与通知/手势/DragVertical.dart';
import '事件处理与通知/手势/GestureConflictTestRouteState.dart';
import '事件处理与通知/GestureDetectorTestRoute.dart';
import '事件处理与通知/手势/GestureRecognizerTestRouteState.dart';
import '事件处理与通知/ListenerRoute.dart';
import '事件处理与通知/手势/ScaleTestRouteState.dart';
import '功能型Widget/FonctionnalWidgetRoute.dart';
import '功能型Widget/FutureBuilderTextRoute.dart';
import '功能型Widget/ShareData/InheritedWidgetTestRoute.dart';
import '功能型Widget/NavRoute.dart';
import '功能型Widget/StreamBuilderTextRoute.dart';
import '功能型Widget/WillPopScopeTestRoute.dart';
import '功能型Widget/ThemeTestRoute.dart';
import '功能型Widget/对话框详解/AlertDialogRoute.dart';
import ' 可滚动组件/CustomScrollView.dart';
import ' 可滚动组件/InfiniteGridView.dart';
import ' 可滚动组件/ScrollControllerRouter.dart';
import ' 可滚动组件/GridView.dart';
import ' 可滚动组件/InfiniteListView.dart';
import ' 可滚动组件/ListViewRouter.dart';
import ' 可滚动组件/SingleChildScrollViewRouter.dart';
import ' 可滚动组件/ScrollView.dart';
import '基础组件/InputAndForm.dart';
import '基础组件/ProgressRoute.dart';
import '基础组件/RasiseButtonWidget.dart';
import '基础组件/SwitchAndCheckBoxTestRoute.dart';
import '基础组件/FocusTestRoute.dart';
import '基础组件/Text.dart';
import '容器类组价/ClipRouter.dart';
import '容器类组价/ConstrainedBoxRouter.dart';
import '容器类组价/ContainerRouter.dart';
import '容器类组价/DecoratedBoxRouter.dart';
import '容器类组价/PaddingTestRoute.dart';
import '容器类组价/ScaffoldTabBarRouter.dart';
import '容器类组价/TransformRouter.dart';
import '容器类组价/WidgetRouter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
        //注册路由表
        routes: {
          "new_page": (context) => NewRoute(),
          "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
          "tip2": (context) {
            return TipRoute(text: ModalRoute.of(context).settings.arguments);
          },
          "TextWidget": (context) => TextWidget(),
          "RasiseButtonWidget": (context) => RasiseButtonWidget(),
          "SwitchAndCheckBoxTestRoute": (context) =>
              SwitchAndCheckBoxTestRoute(),
          "FormTestRoute": (context) => FormTestRoute(),
          "FocusTestRoute": (context) => FocusTestRoute(),
          "ProgressRoute": (context) => ProgressRoute(),
          "FlexLayoutRoute": (context) => FlexLayoutRoute(),
          "WrapRouter": (context) => WrapRouter(),
          "StackPositionedRouter": (context) => StackPositionedRouter(),
          "AlignRouter": (context) => AlignRouter(),
          "LayOutRouter": (context) => LayOutRouter(),
          "BaseUIRouter": (context) => BaseUIRouter(),
          "WidgetRouter": (context) => WidgetRouter(),
          "PaddingTestRoute": (context) => PaddingTestRoute(),
          "ConstrainedBoxRouter": (context) => ConstrainedBoxRouter(),
          "DecoratedBoxRouter":(context) => DecoratedBoxRouter(),
          "TransformRouter":(context) => TransformRouter(),
          "ContainerRouter":(context) => ContainerRouter(),
          "ScaffoldTabBarRouter":(context) => ScaffoldTabBarRouter(),
          "Cliprouter":(context) => Cliprouter(),
          "Scrollview":(context) => Scrollview(),
          "SingleChildScrollViewRouter":(context) => SingleChildScrollViewRouter(),
          "Listviewrouter":(context) => Listviewrouter(),
          "Infinitelistview":(context) => Infinitelistview(),
          "Gridview":(context) => Gridview(),
          "CustomScrollviewRoute":(context) => CustomScrollviewRoute(),
          "ScrollControllerRoute":(context) => ScrollControllerRoute(),
          "Infinitegridview":(context) => Infinitegridview(),
          "WillPopScopeTestRoute":(context) => WillPopScopeTestRoute(),
          "Fonctionnalwidgetroute":(context) => Fonctionnalwidgetroute(),
          "InheritedWidgetTestRoute":(context) => InheritedWidgetTestRoute(),
          "NavRoute":(context) => NavRoute(),
          "ThemeTestRoute":(context) => ThemeTestRoute(),
          "FutureBuilderTextRoute":(context) => FutureBuilderTextRoute(),
          "StreamBuilderTextRoute":(context) => StreamBuilderTextRoute(),
          "AlertDialogRoute":(context) => AlertDialogRoute(),
          "ListenerRoute":(context) => ListenerRoute(),
          "GestureDetectorTestRoute":(context) => GestureDetectorTestRoute(),
          "Drag":(context) => Drag(),
          "DragVertical":(context) => DragVertical(),
          "ScaleTestRouteState":(context) => ScaleTestRouteState(),
          "GestureRecognizerTestRouteState":(context) => GestureRecognizerTestRouteState(),
          "BothDirectionTestRoute":(context) => BothDirectionTestRoute(),
          "GestureConflictTestRouteState":(context) => GestureConflictTestRouteState(),
          "LoginRoute":(context) => LoginRoute(),

          //...//省略其他路由注册信息
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_page");
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) {
//                      return NewRoute();
//                    }));
              },
            ),
            RandomwordsWidget(),
            FlatButton(
              child: Text("open BaseUIRouter基础组件 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "BaseUIRouter");
              },
            ),
            FlatButton(
              child: Text("open LayOutRouter布局组件 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "LayOutRouter");
              },
            ),
            FlatButton(
              child: Text("open 容器类Widget组件 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "WidgetRouter");
              },
            ),
            FlatButton(
              child: Text("open 可滚动Widget组件 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "Scrollview");
              },
            ),
            FlatButton(
              child: Text("open 功能型组件 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "Fonctionnalwidgetroute");
              },
            ),
            FlatButton(
              child: Text("open AlertDialogRoute route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "AlertDialogRoute");
              },
            ),
            FlatButton(
              child: Text("open 事件处理与通知 route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "ListenerRoute");
              },
            ),

          ],
        ),
      ),
    );
  }
}

class RandomwordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}
