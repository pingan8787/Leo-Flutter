// StackWidget层叠和PositionedWidget层叠定位组件
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5,0.8),
      // alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。它有两个值X轴距离和Y轴距离，值是从0到1的，都是从上层容器的左上角开始算起的
      children: <Widget>[
        // 用来设置图片弧度 100.0为圆
        new CircleAvatar(
          backgroundImage: new NetworkImage("http://pingan8787.com/images/logo@2x.png"),
          radius: 100.0,
        ),
        // new Container(
        //   decoration: new BoxDecoration(
        //     color: Colors.lightBlue
        //   ),
        //   padding: EdgeInsets.all(5.0),
        //   child: Text("王平安 leo"),
        // )
        new Positioned(
          top: 10.0,
          left: 50.0,
          child: new Text("hello leo"),
        ),
        new Positioned(
          top: 100.0,
          left: 100.0,
          child: new Text("hello leo"),
        )
      ],
    );

    return MaterialApp(
      title:"Row布局",
      home:Scaffold(
        appBar: AppBar(
          title:Text("leo RowWidget Demo"),
        ), 
        body:Center(
          child:stack
        )
      )
    );
  }
}
// Positioned组件的属性
// bottom: 距离层叠组件下边的距离
// left：距离层叠组件左边的距离
// top：距离层叠组件上边的距离
// right：距离层叠组件右边的距离
// width: 层叠定位组件的宽度
// height: 层叠定位组件的高度