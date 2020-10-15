import 'package:flutter/material.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .38,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              PhysicalModel(
                shadowColor: Colors.grey,
                color: Colors.transparent,
                elevation: 9,
                child: Image.asset(
                  'images/15.jpg',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('data')
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .38,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              PhysicalModel(
                shadowColor: Colors.grey,
                color: Colors.transparent,
                elevation: 9,
                child: Image.asset(
                  'images/ds.jpg',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('data')
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .38,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              PhysicalModel(
                shadowColor: Colors.grey,
                color: Colors.transparent,
                elevation: 9,
                child: Image.asset(
                  'images/15.jpg',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('data')
            ],
          ),
        )
      ],
    );
  }
}
