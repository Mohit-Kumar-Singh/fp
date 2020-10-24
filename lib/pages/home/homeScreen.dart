import 'package:Footprints/pages/aboutus.dart';

import 'package:flutter/material.dart';
import 'package:Footprints/pages/home/MainPage.dart';
import 'package:Footprints/pages/home/post.dart';
import 'package:Footprints/pages/home/team.dart';
import 'package:Footprints/models/customButtons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:Footprints/services/auth.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  Widget showpage = MainPage();
  DrawerState state = DrawerState.closed;
  bool isdraweropen = true;

  void page(int i) {
    setState(() {
      if (i == 0) {
        _controller.close();
        isdraweropen = true;
        showpage = MainPage();
      }
      if (i == 1) {
        _controller.close();
        isdraweropen = true;
        showpage = Team();
      }

      if (i == 2) {
        _controller.close();
        isdraweropen = true;
        showpage = Post();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Color bgred = Color.fromRGBO(231, 137, 135, 1);

  Color bg = Color.fromRGBO(182, 207, 203, 1);
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        itemGap: 00,
        cornerRadius: 40,
        backgroundColor: bg,
        controller: _controller,
        drawerItems: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => _launchUrl(
                      'https://instagram.com/kaleidoscope.fp?igshid=1wngcg0l54h0q'),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/fp.png'),
                        radius: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Footprints',
                            style: GoogleFonts.ebGaramond(
                                color: Colors.black, fontSize: 22),
                          ),
                          Text(
                            'REDEFINING CREATIVITY',
                            style: GoogleFonts.ebGaramond(
                                color: Colors.black, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customButton(
                      'HOME',
                      Icons.home,
                      () {
                        page(0);
                      },
                    ),
                    customButton(
                      'SEARCH',
                      Icons.search,
                      () {
                        page(2);
                      },
                    ),
                    customButton("PARTICIPATE", Icons.person_add, () {}),
                    //    customButton("NOTIFICATION", Icons.notifications, () {}),
                    customButton('ABOUT US', Icons.person_outline, () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => AboutUs()));
                    }),
                    customButton("INVITE", Icons.people, () {})
                  ],
                ),
                Spacer(
                    //  flex: 4,
                    ),
                Row(
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     _controller.close();
                    //     page(3);
                    //     setState(() {
                    //       isdraweropen = true;
                    //     });
                    //   },
                    // child:
                    // GestureDetector(
                    //   onTap: () {},
                    // child: Row(
                    //   children: [
                    //     Icon(
                    //       Icons.settings,
                    //       color: Colors.black,
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'settings',
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.bold),
                    //     )
                    //   ],
                    // ),
                    //   ),
                    //  ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.black,
                    ),
                    // Icon(MdiIcons.login, color: Colors.black87),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await _auth.signOut();
                      },
                      child: Text(
                        'Log out',
                        style: GoogleFonts.ebGaramond(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],

        child: Scaffold(
            backgroundColor: Colors.blueGrey[100],
            appBar: AppBar(
              shadowColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = false;
                              _controller.open();
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = true;
                              _controller.close();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                  Text(
                    "Footprints",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
            ),
            body: showpage),
        // ),
      ),
    );
  }
}
