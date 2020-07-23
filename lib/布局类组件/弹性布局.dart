import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FlexLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flex 布局"),
      ),
      body: Column(
        children: [

          Flex(
            direction:Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                  flex:2,
                  child: Container(
                    height: 30,
                    color: Colors.green,
                  )
              ),
              Expanded(
                  flex:2,
                  child: Container(
                    height: 30,
                    color: Colors.red,
                  )
              )
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 100.0,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          ),


          Flex(
            direction: Axis.vertical,
            children: [
              Text("22"),
              Text("44")
            ],
          ),

        ],
      )
    );
  }
}
