import 'package:flutter/material.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/TipRoute.dart';
import 'package:english_words/english_words.dart';

import 'InputAndForm.dart';
import 'RasiseButtonWidget.dart';
import 'SwitchAndCheckBoxTestRoute.dart';
import 'FocusTestRoute.dart';
import 'Text.dart';

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
        "new_page":(context) => NewRoute(),
        "/":(context) =>  MyHomePage(title: 'Flutter Demo Home Page'),
        "tip2":(context) {
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        },
        "TextWidget":(context)=>TextWidget(),
        "RasiseButtonWidget":(context)=>RasiseButtonWidget(),
        "SwitchAndCheckBoxTestRoute":(context)=>SwitchAndCheckBoxTestRoute(),
        "FormTestRoute":(context)=>FormTestRoute(),
        "FocusTestRoute":(context)=>FocusTestRoute(),
        //...//省略其他路由注册信息
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "new_page");
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) {
//                      return NewRoute();
//                    }));
              },
            ),
            RandomwordsWidget(),
            FlatButton(
              child: Text("open TextWidget route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "TextWidget");
              },
            ),

            FlatButton(
              child: Text("open RasiseButtonWidget route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "RasiseButtonWidget");
              },
            ),
            FlatButton(
              child: Text("open SwitchAndCheckBoxTestRoute route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "SwitchAndCheckBoxTestRoute");
              },
            ),

            FlatButton(
              child: Text("open FormTestRoute route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "FormTestRoute");
              },
            ),
            FlatButton(
              child: Text("open FocusTestRoute route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "FocusTestRoute");
              },
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomwordsWidget extends StatelessWidget{
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
