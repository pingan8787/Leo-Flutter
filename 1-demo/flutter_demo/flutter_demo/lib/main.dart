// 不规则底部工具栏

import 'package:flutter/material.dart';
import 'widget/bottom_app_bar_demo/bottom_app_bar_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "leo demo",
      // 自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarDemo(),
    );
  }
}