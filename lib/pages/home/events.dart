import 'package:Footprints/models/Container.dart';
import 'package:flutter/material.dart';

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
      ],
    );
  }
}
