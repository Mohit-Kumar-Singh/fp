import 'package:Footprints/models/user.dart';
import 'package:Footprints/services/auth.dart';
import 'package:Footprints/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        //  title: 'FOOTPRINTS',
//       theme: ThemeData(
//           primarySwatch:  Color.fromRGBO(182, 207, 203, 1),
//  , primaryColor: Colors.blueGrey[800]),
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   FancyDrawerController _controller;
//   Widget showpage = MainPage();
//   DrawerState state = DrawerState.closed;
//   bool isdraweropen = true;

//   void page(int i) {
//     setState(() {
//       if (i == 0) {
//         _controller.close();
//         isdraweropen = true;
//         showpage = MainPage();
//       }
//       if (i == 1) {
//         _controller.close();
//         isdraweropen = true;
//         showpage = Team();
//       }

//       if (i == 2) {
//         _controller.close();
//         isdraweropen = true;
//         showpage = Post();
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = FancyDrawerController(
//         vsync: this, duration: Duration(milliseconds: 250))
//       ..addListener(() {
//         setState(() {});
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   _launchUrl(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   Color bgred = Color.fromRGBO(231, 137, 135, 1);

//   Color bg = Color.fromRGBO(182, 207, 203, 1);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: FancyDrawerWrapper(
//         itemGap: 00,
//         cornerRadius: 40,
//         backgroundColor: bg,
//         controller: _controller,
//         drawerItems: <Widget>[
//           Container(
//             height: MediaQuery.of(context).size.height * 0.9,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () => _launchUrl(
//                       'https://instagram.com/kaleidoscope.fp?igshid=1wngcg0l54h0q'),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: 10,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           page(5);
//                         },
//                         child: CircleAvatar(
//                           backgroundImage: AssetImage('images/fp.png'),
//                           radius: 22,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             'Footprints',
//                             style: GoogleFonts.ebGaramond(
//                                 color: Colors.black, fontSize: 22),
//                           ),
//                           // Divider(
//                           //   color: Colors.black,
//                           // ),
//                           // Text('akgec',
//                           //     style: TextStyle(
//                           //       color: Colors.black,
//                           //     )),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     customButton(
//                       'HOME',
//                       Icons.home,
//                       () {
//                         page(0);
//                       },
//                     ),
//                     customButton(
//                       'SEARCH',
//                       Icons.search,
//                       () {
//                         page(2);
//                       },
//                     ),
//                     customButton('ABOUT US', Icons.person_outline, () {
//                       page(1);
//                     }),
//                     // customButton('', Icons.bookmark_border, () {
//                     //   page(0);
//                     // }),
//                   ],
//                 ),
//                 Spacer(),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _controller.close();
//                         page(3);
//                         setState(() {
//                           isdraweropen = true;
//                         });
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.settings,
//                             color: Colors.black,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'settings',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       width: 2,
//                       height: 20,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Log out',
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],

//         child: Scaffold(
//             backgroundColor: Colors.blueGrey[100],
//             appBar: AppBar(
//               shadowColor: Colors.transparent,
//               elevation: 0,
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   isdraweropen
//                       ? IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isdraweropen = false;
//                               _controller.open();
//                             });
//                           },
//                           icon: Icon(
//                             Icons.menu,
//                             color: Colors.black,
//                           ),
//                         )
//                       : IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isdraweropen = true;
//                               _controller.close();
//                             });
//                           },
//                           icon: Icon(
//                             Icons.arrow_back_ios,
//                             color: Colors.black,
//                           ),
//                         ),
//                   Text(
//                     "Footprints",
//                     style: TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.w300),
//                   ),
//                 ],
//               ),
//               backgroundColor: Colors.transparent,
//             ),
//             body: showpage),
//         // ),
//       ),
//     );
//   }
// }
