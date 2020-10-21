import 'package:Footprints/pages/login/Signin.dart';

import 'pages/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // print(user);
    // Rreturn LoginPage();

    //return home or authenticate
    if (user == null) {
      return Signin();
    } else {
      return HomeScreen();
    }
  }
}
