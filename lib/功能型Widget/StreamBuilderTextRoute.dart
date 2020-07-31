import 'package:flutter/material.dart';

class StreamBuilderTextRoute extends StatefulWidget {
  StreamBuilderTextRoute({Key key}) : super(key: key);

  @override
  _StreamBuilderTextRouteState createState() => _StreamBuilderTextRouteState();
}

class _StreamBuilderTextRouteState extends State<StreamBuilderTextRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilderTextRoute"),
      ),
      body: StreamBuilder<int>(
        stream: counter(),
          builder: (BuildContext context,AsyncSnapshot<int> snapshot){
          if(snapshot.hasError)
            return Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('没有Stream');
            case ConnectionState.waiting:
              return Text('等待数据...');
            case ConnectionState.active:
              return Text('active: ${snapshot.data}');
            case ConnectionState.done:
              return Text('Stream已关闭');
          }
          return null;
          }
      ),
    );
  }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1),(i){
      return i;
    });
  }
}

