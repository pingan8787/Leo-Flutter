// 电影海报案例
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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.8,//宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5
          ),
          children: <Widget>[
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/20/113753.64733451_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/30/093453.59629589_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/102200.16353908_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/20/144322.75647377_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/18/185759.34783943_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/12/12/090449.44956344_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/11/27/095320.10201608_100X140X4.jpg"),
            new Image.network("http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg"),
          ],
        ),
      ),
    );
  }
}