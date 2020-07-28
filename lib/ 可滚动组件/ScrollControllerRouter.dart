import 'package:flutter/material.dart';

class ScrollControllerRoute extends StatefulWidget {
  ScrollControllerRoute({Key key}) : super(key: key);
  @override
  _ScrollControllerRouteState createState() => _ScrollControllerRouteState();
}

class _ScrollControllerRouteState extends State<ScrollControllerRoute> {
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮


  String _progress = "0%"; //保存进度百分比

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //监听滚动事件，打印滚动位置

    _controller.addListener(() {
      print("监听滚动事件，打印滚动位置${_controller.offset})");
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && !showToTopBtn) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("ScrollControllerRoute"),
      ),
      body: Scrollbar(
        // 监听滚动通知
      child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification){
            double progress = notification.metrics.pixels/notification.metrics.maxScrollExtent;
            //重新构建
            setState(() {
              if(progress>1){
                progress = 1;
              }
              if(progress < 0){
                progress = 0;
              }
              _progress = "${(progress * 100).toInt()}%";
            });
            print("BottomEdge: ${notification.metrics.extentAfter == 0}");
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text("$index"));
                  }),
              CircleAvatar(
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              )
            ],
          ),
        )
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _controller.animateTo(400, duration: Duration(milliseconds: 200), curve: Curves.easeInQuad);
        },
      ),
    );
  }
}
