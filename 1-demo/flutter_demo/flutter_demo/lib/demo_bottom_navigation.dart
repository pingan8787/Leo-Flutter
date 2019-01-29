// 不规则的底部导航栏的设置
import 'package:flutter/material.dart';
import 'widget/bottom_navigation/bottom_navigation.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter bottomNavigationBar",
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}