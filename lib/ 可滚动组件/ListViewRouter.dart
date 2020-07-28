import 'package:flutter/material.dart';

class Listviewrouter extends StatelessWidget {
  Listviewrouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listviewrouter"),
      ),
      body: ListView2()
    );
  }
}


class ListView1  extends StatelessWidget {
  ListView1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 100,
        itemExtent: 50.0, //强制高度为50.0
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        }
    );
  }
}

class ListView2 extends StatelessWidget {
  ListView2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(color: Colors.green,);
    Widget divider2 = Divider(color: Colors.blue,);

    return ListView.separated(
        itemBuilder: (BuildContext context , int index){
          return ListTile(
            title: Text("$index"),
          );
        },
        separatorBuilder: (BuildContext context , int index){
          return index%2==0 ? divider1 : divider2;
        },
        itemCount: 100,
    );
  }
}
