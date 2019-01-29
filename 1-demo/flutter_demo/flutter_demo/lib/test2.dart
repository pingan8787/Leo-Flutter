// ContainerWidget容器组件
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Welcome leo",
      home:Scaffold(
        appBar: AppBar(
          title:Text("hello world!"),
        ),
        body: Center(
          // child: Text(
          //   "这里我们已经使用了一个最简单的Text组件了，但是我们所有属性都是默认的的，下面我们就来多一点修饰这个Text组件。这里我们已经使用了一个最简单的Text组件了，但是我们所有属性都是默认的的，下面我们就来多一点修饰这个Text组件。这里我们已经使用了一个最简单的Text组件了，但是我们所有属性都是默认的的，下面我们就来多一点修饰这个Text组件。",
          //   textAlign: TextAlign.left,
          //   maxLines: 2,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle(
          //     fontSize: 25.0,
          //     color: Color.fromARGB(255, 255, 150, 150),
          //     decoration: TextDecoration.underline,
          //     decorationStyle: TextDecorationStyle.solid
          //   ),
          // ),
          child: Container(
            // child: new Text(
            //   "hello leo",
            //   style: TextStyle(
            //     fontSize: 40.0
            //   ),
            // ),
            // alignment: Alignment.topLeft,
            // width: 500.0,
            // height: 400.0,
            // // color: Colors.lightBlueAccent,
            // padding: const EdgeInsets.all(20.0),
            // margin: const EdgeInsets.all(10.0),
            // decoration: new BoxDecoration(
            //   gradient: const LinearGradient(
            //     colors: [
            //       Colors.lightBlue,
            //       Colors.lightGreen,
            //       Colors.purple
            //     ]
            //   )
            // ),
            child: new Image.network(
              "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
              scale: 2.0,
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
              // color: Colors.greenAccent,
              // colorBlendMode: BlendMode.modulate, // 图片和颜色混合
            ),
            width: 400.0,
            height: 300.0,
            color: Colors.lightBlue,

          ),
        )
      )
    );
  }
}
// BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
// BoxFit.contain:全图显示，显示原比例，可能会有空隙。
// BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
// BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
// BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
// BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。

// ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
// ImageRepeat.repeatX: 横向重复，纵向不重复。
// ImageRepeat.repeatY：纵向重复，横向不重复。