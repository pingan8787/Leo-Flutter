// 横向列表组件
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
       body: Center(
         child: new Container(
           height: 200.0,
           child: MyList(),
         ),
       )
      ) 
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      // Axis.horizontal:横向滚动或者叫水平方向滚动。
      // Axis.vertical:纵向滚动或者叫垂直方向滚动。
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightGreen,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        )
      ],
    );
  }
}