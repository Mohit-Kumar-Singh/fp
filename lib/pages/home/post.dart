import 'package:flutter/material.dart';
import 'package:Footprints/models/Container.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
      // Container(
      //   height: MediaQuery.of(context).size.height * .78,
      //   margin: EdgeInsets.all(10),
      //   padding: EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.all(Radius.circular(20))),
      //   child: Column(
      //     children: [
      //       Image.asset('images/h.jpg'),
      //       SizedBox(
      //         height: 4,
      //       ),
      //       Spacer(),
      //       Text(
      //         'jj',
      //         textAlign: TextAlign.center,
      //       ),
      //       Spacer(),
      //       Divider(),
      //       Spacer(),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text('Created by ~'),
      //           GestureDetector(
      //             onTap: () {},
      //             child: Text(
      //               '@Shashank_Garg',
      //               style: TextStyle(
      //                   // color: Theme.of(context).primaryColor,
      //                   fontStyle: FontStyle.italic,
      //                   decoration: TextDecoration.underline),
      //             ),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      postContainer(
        ctx: context,
        image: 'images/h.jpg',
        title: 'Hrithik Roshan',
        type: 'Created',
        url: "https://instagram.com/shashank_garg_?igshid=1jdaqwvgdbsyh",
        captions:
            '"Inner strength comes only to those who move forward in the face of adversity" ',
        name: 'Shashank_Garg',
      ),
      postContainer(
          ctx: context,
          title: 'Pigeons',
          type: 'Captured',
          captions:
              'When the power of love overcomes the love of of power the world will know peace',
          name: 'Shubham',
          image: 'images/k.jpg',
          url: "https://instagram.com/shubham_max_?igshid=xcuq8nuiytd0"),
      postContainer(
        ctx: context,
        image: 'images/ll.jpg',
        title: 'Jindgi',
        type: 'Penned',
        captions:
            "इतना क्यों सिखाई जा रही हो जिंदगी हमें कौन से सदिया गुजारनी है यहां",
        name: 'Shrasti Sanjay Shukla',
        url: "https://instagram.com/_.sss18._?igshid=350k5dr3vi47",
      )
      //  ]))
    ]);
  }
}
