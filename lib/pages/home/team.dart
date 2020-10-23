import 'package:Footprints/models/Container.dart';
import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              labelText: 'Search',
            ),
          ),
        ),
        Container(
          height: 240,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              profileContainer(
                  name: 'Mohit Kumar Singh',
                  domain: 'Artist',
                  image: 'images/mks.jpg',
                  url:
                      "https://instagram.com/mohit_kumar_singh?igshid=1062al15bzcdn"),
              profileContainer(
                  name: 'Rifa Fatima',
                  domain: 'Literati',
                  image: 'images/rifa.png',
                  url: "https://instagram.com/rifatimaa?igshid=1wqep8fz0pv31"),
              profileContainer(
                  name: 'Shivam Anand',
                  domain: 'Photography',
                  image: 'images/shivam.png',
                  url:
                      'https://instagram.com/casual_cuber_?igshid=y7vflq5vlv32')
            ],
          ),
        ),
      ]),
    );
  }
}
