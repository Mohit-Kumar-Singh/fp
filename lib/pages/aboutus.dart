import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Color bg = Color.fromRGBO(182, 207, 203, 1);
    Color font = Color.fromRGBO(42, 49, 59, 1);
    return SafeArea(
        child: Scaffold(
      //  backgroundColor: bg,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('FOOTPRINS',
            style: GoogleFonts.ebGaramond(
                color: font,
                //  color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w300)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // circleAvatar(image: 'images/fp.png', radius: 50),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: PhysicalModel(
                  shape: BoxShape.circle,
                  shadowColor: Colors.grey,
                  color: Colors.transparent,
                  elevation: 8,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'images/fp.png',
                    ),
                  ),
                ),
              ),

              Text(
                "“Where Imagination Breathes Freely”",
                style: GoogleFonts.marckScript(
                  color: font,
                  //  color: Colors.black,
                  fontSize: 20,
                  //   color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                color: font,
                //  color: Colors.black,
                // color: Colors.white,
                //   color: Colors.black,
                //thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                'Staying true to the motto of creative explorations, Team Footprints is the creative society of the college. The society encapsulates four major domains: Arts, Literature, Photography and Designing. Being present at the helm of every cultural event in the college, Team Footprints is unarguably the backbone of the creative and cultural aspect of AKGEC.',
                style: GoogleFonts.lato(
                  color: font,
                  //  color: Colors.black,
                  fontSize: 18,
                  // color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: font,
                //  color: Colors.black,
                // color: Colors.white,
                //   color: Colors.black,
                //thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Text('OUR EVENTS',
                  style: GoogleFonts.ebGaramond(
                      color: font,
                      //  color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w300)),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                initiallyExpanded: false,
                title: Text(
                  'POSTER MAKING',
                  style: GoogleFonts.lato(fontSize: 19),
                ),
                //   subtitle: Text('data'),
                children: [
                  Text(
                    'Visual arts has always been one of the most powerful form of expression. When words fail to describe, art fills in the void. Team Footprints has been the platform to raise social issues by conducting Anti Ragging and BDC Poster Making Competitions to promote social issues, culminating art at its highest form.',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                initiallyExpanded: false,
                title: Text(
                  'MUSHAIRA',
                  style: GoogleFonts.lato(fontSize: 19),
                ),
                //   subtitle: Text('data'),
                children: [
                  Text(
                    '“कुछ अनगिनत क़िस्से है मेरी कलम में क़ैद,\n कुछ मंच है जो आज भी बंजारे रहे”\n “Mushaira” has been one of the biggest platforms in the college that bring out the poetic best of the literatis. The institution has witnessed some of the unforgettable poets who have set the bars to a whole new level by their powerful performances in Mushaira, and the event is always a feast to the ears of the listeners.',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                initiallyExpanded: false,
                title: Text(
                  'CHYAN',
                  style: GoogleFonts.lato(fontSize: 19),
                ),
                //   subtitle: Text('data'),
                children: [
                  Text(
                    'Chayan is one of the most enthralling recruitment drives of AKGEC. There are various rounds and a final PI before one gets to become the part of our spectacular team. It could be said a journey between the coast to the ship, a ship that sails across innumerable corners of imagination.',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('G E T    I N    T O U C H ',
                    style: GoogleFonts.ebGaramond(
                        color: font,
                        //  color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w300)),
              ),
              Divider(
                thickness: 0,
                color: font,
                indent: 15,
                endIndent: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => _launchUrl(
                          'https://www.instagram.com/kaleidoscope.fp/'),
                      icon: Icon(
                        MdiIcons.instagram,
                        color: font,
                      )),
                  IconButton(
                      icon: Icon(
                        MdiIcons.email,
                        color: font,
                      ),
                      onPressed: () =>
                          _launchUrl('FootprintsMedia0905@gmail.com')),
                  IconButton(
                      icon: Icon(
                        MdiIcons.web,
                        color: font,
                      ),
                      onPressed: () =>
                          _launchUrl('https://footprintsmedia.in/')),
                  IconButton(
                      icon: Icon(
                        MdiIcons.facebook,
                        color: font,
                      ),
                      onPressed: () =>
                          _launchUrl('https://www.facebook.com/fpupdates'))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
