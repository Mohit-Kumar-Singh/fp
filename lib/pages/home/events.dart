import 'package:Footprints/models/Container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        eventContainer(
          ctx: context,
          image: 'images/15.jpg',
          title: "Founder's Day",
        ),
        eventContainer(
          ctx: context,
          image: 'images/ds.jpg',
          title: "DreamScape'20",
        ),
        // Container(
        //   height: MediaQuery.of(context).size.height * .38,
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(15),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.all(Radius.circular(20))),
        //   child: Row(
        //     children: [
        //       PhysicalModel(
        //         shadowColor: Colors.grey,
        //         color: Colors.transparent,
        //         elevation: 9,
        //         child: Image.asset(
        //           'images/15.jpg',
        //         ),
        //       ),
        //       SizedBox(
        //         width: 5,
        //       ),
        //       Text('data')
        //     ],
        //   ),
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height * .38,
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(15),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.all(Radius.circular(20))),
        //   child: Row(
        //     children: [
        //       PhysicalModel(
        //         shadowColor: Colors.grey,
        //         color: Colors.transparent,
        //         elevation: 9,
        //         child: Image.asset(
        //           'images/ds.jpg',
        //         ),
        //       ),
        //       SizedBox(
        //         width: 5,
        //       ),
        //       Text('data')
        //     ],
        //   ),
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height * .38,
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(15),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.all(Radius.circular(20))),
        //   child: Row(
        //     children: [
        //       PhysicalModel(
        //         shadowColor: Colors.grey,
        //         color: Colors.transparent,
        //         elevation: 9,
        //         child: Image.asset(
        //           'images/15.jpg',
        //         ),
        //       ),
        //       SizedBox(
        //         width: 5,
        //       ),
        //       Text('data')
        //     ],
        //   ),
        // )
      ],
    );
  }
}
