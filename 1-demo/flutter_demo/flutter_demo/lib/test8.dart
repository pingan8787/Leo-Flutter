// 水平垂直方向布局
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Row布局",
      home:Scaffold(
        appBar: AppBar(
          title:Text("leo RowWidget Demo"),
        ), 
        // 垂直布局
        body:Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // cross轴是副轴  main轴是主轴
            // CrossAxisAlignment.star：居左对齐。
            // CrossAxisAlignment.end：居右对齐。
            // CrossAxisAlignment.center：居中对齐。
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("我是leo"),
              Text("我是leo我是leo我是leo我是leo"),
              Expanded(
                child: Text("我是leo我是leo"),
              ),
              Text("我是leo我是leo我是leo我是leo我是leo"),
              Text("我是leo我是leo我是leo"),
            ],
          )

        )
        // 水平布局
        // body:new Row(
        //   children: <Widget>[
        //     Expanded(    // Expanded 灵活布局
        //       child: new RaisedButton(
        //         onPressed: (){},
        //         color: Colors.redAccent,
        //         child: Text("按钮1"),
        //       ),
        //     ),
        //     Expanded(
        //       child: new RaisedButton(
        //         onPressed: (){},
        //         color: Colors.greenAccent,
        //         child: Text("按钮2"),
        //       ),
        //     ),
        //     Expanded(
        //       child: new RaisedButton(
        //         onPressed: (){},
        //         color: Colors.blueAccent,
        //         child: Text("按钮3"),
        //       ),
        //     )
        //   ],
        // )
      )
    );
  }
}