// 酷炫路由导航

import 'package:flutter/material.dart';
import 'widget/page_route_animation/first_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "规划 leo demo",
      // 自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: FirstPage(),
    );
  }
}