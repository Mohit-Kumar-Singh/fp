import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Footprints/models/customButtons.dart';

_launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget postContainer(
    {@required BuildContext ctx,
    @required String image,
    @required String title,
    @required String captions,
    @required String name,
    @required String type,
    String url}) {
  return Container(
    height: MediaQuery.of(ctx).size.height * .79,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      children: [
        PhysicalModel(
          shadowColor: Colors.grey,
          color: Colors.transparent,
          elevation: 9,
          child: Image.asset('$image'),
        ),
        SizedBox(
          height: 4,
        ),
        Text('$title',
            style: GoogleFonts.ebGaramond(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w300)),
        Spacer(),
        Text('$captions',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w300)),
        Spacer(),
        Divider(),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('$type by ~', style: GoogleFonts.marckScript(fontSize: 18)),
            GestureDetector(
              onTap: () {
                _launchUrl('$url');
              },
              child: Text(
                '@$name',
                // style: TextStyle(
                //     // fontSize: 20,
                //     // color: Theme.of(context).primaryColor,
                //     fontStyle: FontStyle.italic,
                //    // decoration: TextDecoration.underline
                //    ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget profileContainer({
  @required String name,
  @required String domain,
  String image,
  String url,
}) {
  return Container(
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
    ),
    child: Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blueGrey[200], width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 160,
      height: 230,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          circleAvatar(image: '$image', radius: 45),
          Spacer(),
          Text(
            '$name',
          ),
          Text(
            '$domain',
            // style: TextStyle(
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold)
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              _launchUrl('$url');
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 130,
              child: Text(
                'View Profile',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blueGrey[800]),
            ),
          ),
        ],
      ),
    ),
  );
}
