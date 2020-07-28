import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  Gridview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gridview"),
        ),
        body: GridView(
          /*
          crossAxisCount：横轴子元素的数量
          childAspectRatio：子元素在横轴长度和主轴长度的比例。
          子元素的大小是通过crossAxisCount和childAspectRatio两个参数共同决定的。
          注意，这里的子元素指的是子组件的最大显示空间，注意确保子组件的实际大小不要超出子元素的空间。
           */
//          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//              crossAxisCount: 4, //横轴三个子widget
//              childAspectRatio: 1 ////宽高比为1时，子widget
//              ),

        /*
        maxCrossAxisExtent为子元素在横轴上的最大长度，
         */
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120.0,
              childAspectRatio: 2.0 //宽高比为2
          ),

          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast),
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast)
          ],
        ) );
  }
}
