

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("填充Padding"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //左边添加8像素补白
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("Hello world"),
            ),
            //上下各添加8像素补白
            Padding(padding: const EdgeInsets.symmetric(vertical:8.0),child: Text("I am Jack"),),
            // 分别指定四个方向的补白
            Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),child: Text("Your friend"),),
          ],
        ),
      )
    );
  }
}
