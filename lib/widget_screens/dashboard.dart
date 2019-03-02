import 'package:clone_musikbagus/tab_home_screen/home.dart';
import 'package:clone_musikbagus/tab_home_screen/musik_rilis.dart';
import 'package:clone_musikbagus/tab_home_screen/musikalisme.dart';
import 'package:clone_musikbagus/tab_home_screen/musikologi.dart';
import 'package:clone_musikbagus/tab_home_screen/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String loginFrom;
  Dashboard({this.loginFrom});

  @override
  DashboardState createState() {
    return new DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final _screenOptions = <Widget>[
    Home(),
    MusikRilis(),
    Musikologi(),
    Musikalisme(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: new Theme(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home'),
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam,
              ),
              title: Text('Musikrilis'),
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_activity,
              ),
              title: Text('Musikologi'),
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
              ),
              title: Text('Musikalisme'),
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              title: Text('Profile'),
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.red,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.white))),
      ),
    );
  }
}
