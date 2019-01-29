// 路由的简单使用

import "package:flutter/material.dart";

void main() {runApp(
  MaterialApp(
    title:"页面导航演示01",
    home: new First()
  ));
}
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("页面导航")
      ),
      body:Center(
        child: RaisedButton(
          child: Text("查看商品详情"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>Second()
            ));
          },
        ),
      )
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}