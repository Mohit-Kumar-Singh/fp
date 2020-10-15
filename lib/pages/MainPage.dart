import 'package:flutter/material.dart';
import 'package:Footprints/pages/home/post.dart';
import 'package:Footprints/pages/home/team.dart';
import 'package:Footprints/pages/home/events.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget body;

  int _selectedItemPosition = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey[100],
        bottomNavigationBar: SnakeNavigationBar(
          // backgroundColor: Colors.transparent,
          padding: EdgeInsets.all(12).copyWith(),
          style: SnakeBarStyle.floating,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), title: Text('work')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'home',
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  'search',
                ))
          ],
          currentIndex: _selectedItemPosition,
          onPositionChanged: (index) => setState(() {
            _selectedItemPosition = index;
            if (index == 0) {
              body = Post();
            }
            if (index == 1) {
              body = Events();
            }
            if (index == 2) {
              body = Team();
            }

            print(index);
          }),
        ),
        body: body,
      ),
    );
  }
}
