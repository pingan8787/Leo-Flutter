import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() { 
    super.initState();
    _eachView = List();
    _eachView..add(EachView("Home"))..add(EachView("Leo"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _eachView[_index],
       // FAB
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
             return EachView("hello leo");
           }));
         },
         tooltip: "leo tips!",
         child: Icon(
           Icons.add,
           color: Colors.white,
         ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BottomAppBar(
         color: Colors.lightBlue,
         shape: CircularNotchedRectangle(),
         child: Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.home),
               color: Colors.white,
               onPressed: (){
                 setState(() {
                   _index = 0;       
                 });
               },
             ),
             IconButton(
               icon: Icon(Icons.email),
               color: Colors.white,
               onPressed: (){
                 setState(() {
                   _index = 1;       
                 });
               },
             )
           ],
         ),
       ),
    );
  }
}