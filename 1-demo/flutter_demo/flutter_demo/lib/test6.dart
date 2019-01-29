// grid布局
import "package:flutter/material.dart";

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "电影海报示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("leo海报示例"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(10.0), // 表示内边距，这个小伙伴们应该很熟悉。
          crossAxisSpacing: 10.0, // 网格间的空当，相当于每个网格之间的间距。
          crossAxisCount: 3,      // 网格的列数，相当于一行放置的网格数量。
          children: <Widget>[
            const Text('i am leo'),
            const Text('i am leo'),
            const Text('i am leo'),
            const Text('i am leo'),
            const Text('i am leo'),
            const Text('i am leo'),
          ],
        ),
      ),
    );
  }
}