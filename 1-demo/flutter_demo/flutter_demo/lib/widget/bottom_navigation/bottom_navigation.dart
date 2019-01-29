import 'package:flutter/material.dart';
import 'home_page.dart';
import 'airplay_page.dart';
import 'pages_page.dart';
import 'mail_page.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() { 
    list
      ..add(HomePage())
      ..add(AirplayPage())
      ..add(EmailPage())
      ..add(PagesPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            title: Text("home",
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavigationColor,
            ),
            title: Text("email",
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _BottomNavigationColor,
            ),
            title: Text("pages",
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _BottomNavigationColor,
            ),
            title: Text("airplay",
              style: TextStyle(color: _BottomNavigationColor),
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;            
          });
        },
        type:BottomNavigationBarType.fixed
      ),
    );
  }
}