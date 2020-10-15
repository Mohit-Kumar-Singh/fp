import 'package:Footprints/models/postContainer.dart';
import 'package:flutter/material.dart';
import 'package:Footprints/models/customButtons.dart';

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
        // Container(
        //   margin: EdgeInsets.all(3),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(22),

        //   ),
        //   child: Container(
        //     padding: EdgeInsets.only(top: 10, bottom: 20),
        //     margin: EdgeInsets.all(2),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       border: Border.all(color: Colors.blueGrey[200], width: 1),
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     width: 160,
        //     height: 230,
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         circleAvatar(image: 'images/15.jpg', radius: 45),
        //         Spacer(),
        //         Text(
        //           'Mohit Kumar Singh',
        //         ),
        //         Text(
        //           'Artist',
        //           // style: TextStyle(
        //           //     color: Colors.black,
        //           //     fontWeight: FontWeight.bold)
        //         ),
        //         Spacer(),
        //         GestureDetector(
        //           child: Container(
        //             alignment: Alignment.center,
        //             height: 30,
        //             width: 130,
        //             child: Text(
        //               'View Profile',
        //               style: TextStyle(color: Colors.white),
        //             ),
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(6),
        //                 color: Colors.blueGrey[800]),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

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
                  domain: 'Litrati',
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
