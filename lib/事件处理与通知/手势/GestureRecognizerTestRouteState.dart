import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerTestRouteState extends StatefulWidget {
  GestureRecognizerTestRouteState({Key key}) : super(key: key);

  @override
  _GestureRecognizerTestRouteStateState createState() =>
      _GestureRecognizerTestRouteStateState();
}

class _GestureRecognizerTestRouteStateState
    extends State<GestureRecognizerTestRouteState> {

  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    // TODO: implement dispose
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("富文本添加手势"),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "Hello world"),
              TextSpan(
                text: "click me change color",
                style: TextStyle(fontSize: 30.0,color: _toggle?Colors.blue:Colors.red),
                recognizer: _tapGestureRecognizer
                  ..onTap = (){
                    setState(() {
                      _toggle = !_toggle;
                    });
                  }
              ),
              TextSpan(text: "Hello world")
            ],
          ),
        ),
      ),
    );
  }
}
