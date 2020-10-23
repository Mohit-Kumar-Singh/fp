import 'package:Footprints/models/customButtons.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      //theme, notification , help, invite a frinend,notification qr code
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          customButton('Theme', Icons.color_lens, () {}),
          GestureDetector(
            onTap: () {},
            child: Container(
              // width: 200,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey[200],
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  Text(
                    'Help',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.access_alarm),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
