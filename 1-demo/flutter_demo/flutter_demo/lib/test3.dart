// 图片组件 和 列表组件
import "package:flutter/material.dart";

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
     title: "leo demo",
     home:Scaffold(
       appBar: new AppBar(
        title:new Text("ListView Widget")
       ),
       body: new ListView(
         children: <Widget>[
           // 图标 + 文本的列表
          //  new ListTile(
          //    leading: new Icon(Icons.add_a_photo),
          //    title:new Text('add_a_photo')
          //  ),
          new Image.network("https://img1.mukewang.com/szimg/59b8a486000107fb05400300.jpg"),
          new Image.network("https://img1.mukewang.com/szimg/5c18d2d8000141c506000338.jpg"),
          new Image.network("https://img4.mukewang.com/szimg/5be39caf00018a8d05400300.jpg"),
          new Image.network("https://img3.mukewang.com/szimg/5a9ca4e80001786305400300.jpg"),
         ],
       ),
      ) 
    );
  }
}
/*
const ListTile({
    Key key,
    this.leading,              // item 前置图标
    this.title,                // item 标题
    this.subtitle,             // item 副标题
    this.trailing,             // item 后置图标
    this.isThreeLine = false,  // item 是否三行显示
    this.dense,                // item 直观感受是整体大小
    this.contentPadding,       // item 内容内边距
    this.enabled = true,
    this.onTap,                // item onTap 点击事件
    this.onLongPress,          // item onLongPress 长按事件
    this.selected = false,     // item 是否选中状态
})
*/