import 'package:flutter/material.dart';
import 'package:Footprints/models/Container.dart';
import 'package:flutter/cupertino.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
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
        title: 'Jindagi',
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
