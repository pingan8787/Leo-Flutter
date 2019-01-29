import 'package:flutter/material.dart';
import 'custome_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("first_page",style: TextStyle(fontSize: 24.0)),
        elevation: 4.0, 
        // elevation : AppBar滚动时的融合度 理解为标题栏下边框 0.0的话 就会没有
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomeRouter(SecoundPage()));
            // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            //   return SecoundPage();
            // }));
          },
        ),
      ),
    );
  }
}

class SecoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("secound_page",style: TextStyle(fontSize: 24.0)),
        elevation: 4.0,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}