import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home_page"),),
      body: Center(
        child: Text("首页"),
      ),
    );
  }
}