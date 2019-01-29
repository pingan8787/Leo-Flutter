// 动态列表
import "package:flutter/material.dart";

void main() => runApp(MyApp(
  items : new List<String>.generate(1000, (i) => "Item $i")
));

class MyApp extends StatelessWidget {
  final List<String> items; // 接收参数
  MyApp( {Key key, @required this.items} ):super(key:key); // @required 表示必须传递的参数
  // :super如果父类没有无名无参数的默认构造函数，则子类必须手动调用一个父类构造函数。
  @override
  Widget build (BuildContext context){
    return MaterialApp (
      title:"ListView",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("ListView Widget")
        ),
        body: new ListView.builder(
          itemCount: items.length, // 动态列表的长度
          itemBuilder: (context, index){
            return new ListTile(
              title: new Text('${items[index]}')
            );
          },
        )
      )
    );
  }
}