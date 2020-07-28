import 'package:flutter/material.dart';

class SingleChildScrollViewRouter extends StatelessWidget {
  SingleChildScrollViewRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollViewRouter"),
      ),
      body: Scrollbar(
          // 显示进度条
          child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: str
                .split("")
                .map((e) => Text(
                      e,
                      textScaleFactor: 12.0,
                    ))
                .toList(),
          ),
        ),
      )),
    );
  }
}
