
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressRoute extends StatefulWidget {
  @override
  _ProgressRouteState createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  
  @override
  void initState() {
    // TODO: implement initState
    _animationController = new AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => {setState(() =>{

    })});
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度指示器"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: LinearProgressIndicator(
                backgroundColor: Colors.red[200],
                valueColor: ColorTween(begin: Colors.grey,end: Colors.blue).animate(_animationController),
                value: _animationController.value,
              ),
            )
          ],
        ),
      ),
    );
  }
}
