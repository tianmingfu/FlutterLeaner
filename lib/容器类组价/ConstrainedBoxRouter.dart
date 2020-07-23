import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstrainedBoxRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget redBox = DecoratedBox(
        decoration: BoxDecoration(color:Colors.red),
    );
    Widget greenBox = DecoratedBox(
      decoration: BoxDecoration(color:Colors.green),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("ConstrainedBox、SizedBox"),
          actions: [
            UnconstrainedBox(
              child:  SizedBox(
              width: 20,
              height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),

              ),
            )

          ],
        ),
        body:Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50, //高度最小为50像素
                minWidth: double.infinity, //宽度尽可能大
              ),
              child: Container(
                height: 5,
                child: redBox,
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: redBox,
            ),




            //如果某一个组件有多个父级ConstrainedBox限制，那么最终会是哪个生效？我们看一个例子：

            /*
              结论：通过上面示例，我们发现有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。
              实际上，只有这样才能保证父限制与子限制不冲突。
             */
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                  child: greenBox,
                )
            ),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                  child: redBox,
                )
            ),




            /*
            UnconstrainedBox不会对子组件产生任何限制，它允许其子组件按照其本身大小绘制。
            一般情况下，我们会很少直接使用此组件，但在"去除"多重限制的时候也许会有帮助，我们看下下面的代码：
             */
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),  //父
                child: UnconstrainedBox( //“去除”父级限制
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                    child: redBox,
                  ),
                )
            ),



          ],
        )
    );
  }
}
