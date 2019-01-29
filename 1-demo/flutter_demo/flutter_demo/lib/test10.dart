// CardWidget卡片布局
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("福建省泉州市惠安县",style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("王平安:15559598991"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text("福建省泉州市惠安县",style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("王平安:15559598991"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text("福建省泉州市惠安县",style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("王平安:15559598991"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          )
        ],
      ),
    );

    return MaterialApp(
      title:"Row布局",
      home:Scaffold(
        appBar: AppBar(
          title:Text("leo RowWidget Demo"),
        ), 
        body:Center(
          child:card,
        )
      )
    );
  }
}