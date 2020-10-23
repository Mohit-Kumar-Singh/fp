import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchCall(int no) async {
    var url = 'tel:${no.toString()}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make call ';
    }
  }

  void _launchEmail(String email) async {
    var url = 'mailto:$email?subject= resume';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make email ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey[300],
            body: CustomScrollView(slivers: [
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 500,
                flexibleSpace: FlexibleSpaceBar(
                    title: Text('FOOTPRINTS',
                        style: GoogleFonts.ebGaramond(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w300)),
                    centerTitle: true,
                    background: Container(
                        height: 40, child: Image.asset('images/fpl.jpg'))),
              ),
              SliverFillRemaining(
                child: Container(
                    color: Colors.cyan,
                    height: 90,
                    width: 70,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Text('hlll'),
                      ],
                    )),
              )
            ]),
            bottomNavigationBar: Container(
              height: MediaQuery.of(context).size.height * .16,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'G E T    I N    T O U C H ',
                      style: TextStyle(
                          fontFamily: 'PlayFair',
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * .028),
                    ),
                  ),
                  Divider(
                    thickness: 0,
                    color: Colors.white,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () => _launchUrl(
                              'https://instagram.com/mohit_kumar_singh?igshid=a7p8i0f07u98'),
                          icon: Icon(
                            MdiIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: () => _launchCall(8527172366),
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () => _launchUrl(
                              'https://www.linkedin.com/in/mohit-kumar-singh-mks'),
                          icon: Icon(
                            MdiIcons.linkedin,
                            color: Colors.white,
                          )),
                      //
                      IconButton(
                          color: Colors.blue,
                          icon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          onPressed: () => _launchEmail('mks61201625@gmailcom'))
                    ],
                  ),
                ],
              ),
            )));
  }
}
