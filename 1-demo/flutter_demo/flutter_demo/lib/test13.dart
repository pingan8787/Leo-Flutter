// 路由携带参数
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "选择商品",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("选择喜欢的商品"),),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          _navigateToProduct(context);
        },
        child: Text("选择"),
      ),
    );
  }

  _navigateToProduct(BuildContext context) async {
    final result = await Navigator.push(context, 
      MaterialPageRoute(builder: (context) => ProductPage())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result"),));
  }
}


class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是商品"),
      ),
      body: Center (
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("商品名称1"),
              onPressed: (){
                Navigator.pop(context,"商品1，详情：这是商品详情1，内容内容。");
              },
            ),
            RaisedButton(
              child: Text("商品名称2"),
              onPressed: (){
                Navigator.pop(context,"商品2，详情：这是商品详情2，内容内容。");
              },
            ),
            RaisedButton(
              child: Text("商品名称3"),
              onPressed: (){
                Navigator.pop(context,"商品3，详情：这是商品详情3，内容内容。");
              },
            )
          ],
        ),
      ),
    );
  }
}