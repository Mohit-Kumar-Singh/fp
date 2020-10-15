import 'package:flutter/material.dart';

Widget customButton(String title, IconData icon, Function ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 200,
      margin: EdgeInsets.only(right: 8, bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 5,
          ),
          Text('$title')
        ],
      ),
    ),
  );
}

Widget circleAvatar({@required String image, @required double radius}) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.black38,
          width: 2,
        )),
    child: CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('$image'),
    ),
  );
}

Widget smallButton(String title, Function ontap, Color color) {
  color = Colors.blueGrey;
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      height: 30,
      width: 130,
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
    ),
  );
}

// import 'package:flutter/material.dart';

// Widget customButton(String title, IconData icon, Function ontap) {
//   return GestureDetector(
//     onTap: ontap,
//     child: Container(
//       width: 200,
//       margin: EdgeInsets.only(right: 8, bottom: 8),
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
//       child: Row(
//         children: [
//           Icon(icon),
//           SizedBox(
//             width: 5,
//           ),
//           Text('$title')
//         ],
//       ),
//     ),
//   );
// }

// Widget circleAvatar({@required String image, @required double radius}) {
//   return Container(
//     margin: EdgeInsets.all(10),
//     padding: EdgeInsets.all(2),
//     decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//         border: Border.all(
//           color: Colors.black38,
//           width: 2,
//         )),
//     child: CircleAvatar(
//       radius: radius,
//       backgroundImage: AssetImage('$image'),
//     ),
//   );
// }
