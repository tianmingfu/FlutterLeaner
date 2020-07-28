import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Infinitelistview extends StatefulWidget {
  Infinitelistview({Key key}) : super(key: key);

  @override
  _InfinitelistviewState createState() => _InfinitelistviewState();
}

class _InfinitelistviewState extends State<Infinitelistview> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinitelistview"),
      ),
      body:Column(
        children: [
          ListTile(title: Text("商品列表"),),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                //如果到了表尾
                if (_words[index] == loadingTag) {
                  //不足100条，继续获取数据
                  if(_words.length-1<20){
                    _retrieveData();
                    //加载时显示loading
                    return Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                        ),
                      ),
                    );
                  }else{
                    //已经加载了100条数据，不再获取数据。
                    return Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16.0),
                        child: Text("没有更多了", style: TextStyle(color: Colors.grey),)
                    );
                  }

                }
                //已经加载了20条数据，不再获取数据。
                return ListTile(title: Text(_words[index]),);
              },
              separatorBuilder: (context, index) => Divider(height: .0),
              itemCount: _words.length),
          )
        ],
      )
    );
  }


  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(_words.length - 1,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
        );
      });
    });
  }


}


