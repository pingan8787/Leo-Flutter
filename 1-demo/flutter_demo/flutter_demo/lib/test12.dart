// 路由参数的使用
import 'package:flutter/material.dart';

// 抽象类
class Product{
  final String title; // 商品标题
  final String decription; // 商品描述
  Product(this.title, this.decription);
}

void main(){
  runApp (MaterialApp(
    title:"路由的数据传递",
    home: ProductList(
      products:List.generate(
        20, 
        (i)=>Product('leo 商品${i}','这是商品详情，编号是${i}')
      )
    )
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;  // 接收参数
  ProductList({Key key, @required this.products}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context)=>new ProductDetail(product:products[index])
              ));
            },
          );
        },
      )
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product; // 接收参数
  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("商品详情--${product.title}")),
      body: Center(
        child: Text("${product.decription}"),
      ),
    );
  }
}