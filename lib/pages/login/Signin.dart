import 'package:Footprints/models/customButtons.dart';
import 'package:Footprints/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'Signup.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  //DatabaseMethods databaseMethods = new DatabaseMethods();
  // AuthMethods authMethods = new AuthMethods();
  bool loading = false;
  final formKey = GlobalKey<FormState>();

  // TextEditingController usernameTextEditingController =
  //     new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  // TextEditingController passwordTextEditingController =
  //     new TextEditingController();

  final AuthServices _auth = AuthServices();

  //text field state
  String email = '';
  String password = '';
  String error = '';

  // signMeUp() {
  //   if (formKey.currentState.validate()) {
  //     Map<String, String> userInfoMap = {
  //       "name": usernameTextEditingController.text,
  //       "email": emailTextEditingController.text
  //     };
  //    // databaseMethods.uploadUserInfo(userInfoMap);

  //     setState(() {
  //       isLoading = true;
  //     });
  //   }
  //   authMethods
  //       .signUpWithEmailAndPassword(
  //           emailTextEditingController.text, passwordTextEditingController.text)
  //       .then((value) {
  //     if (value != null) {
  //       Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => ChatRoom()));
  //     } else {
  //       setState(() {
  //         isLoading = false;
  //       });
  //     }
  //   });
  // }

  Color bg = Color.fromRGBO(182, 207, 203, 1);
  Color bgred = Color.fromRGBO(231, 137, 135, 1);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg,
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                'images/login.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  //color: Colors.red,
                  padding: EdgeInsets.all(6),
                  width: width * .77,
                  height: height * .57,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        circleAvatar(image: 'images/fp.png', radius: 40),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              // TextFormField(
                              //   validator: (val) {
                              //     return val.isEmpty || val.length < 4
                              //         ? "enter valid username"
                              //         : null;
                              //   },
                              //   //controller: usernameTextEditingController,

                              //   decoration: InputDecoration(
                              //       border: InputBorder.none,
                              //       hintText: "username",
                              //       focusedBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(color: bg)),
                              //       enabledBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(color: bgred))),
                              // ),
                              // TextFormField(
                              //   validator: (val) {
                              //     return val.contains("@gmail.com") &&
                              //             emailTextEditingController.text !=
                              //                 null
                              //         ? null
                              //         : "enter valid email";
                              //   },
                              TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: bg)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: bgred))),
                                maxLines: 1,
                                validator: (val) =>
                                    val.contains("@gmail.com") && val.isEmpty
                                        ? 'Enter an email'
                                        : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              //  controller: emailTextEditingController,
                              //   decoration: InputDecoration(
                              //       border: InputBorder.none,
                              //       hintText: "E-mail",
                              //       // hintStyle: TextStyle(color: Colors.white54),
                              //       focusedBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(color: bg)),
                              //       enabledBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(color: bgred))),
                              // ),
                              TextFormField(
                                obscureText: true,
                                validator: (val) => val.length < 1
                                    ? 'Password must have min 6 chars'
                                    : null,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                                // validator: (val) {
                                //   return val.length < 6
                                //       ? "enter strong paswword"
                                //       : null;
                                // },
                                // style: TextStyle(color: Colors.white),
                                // controller: passwordTextEditingController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "password",
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: bg)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: bgred))),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        RaisedButton(
                          elevation: 0,
                          color: Colors.transparent,
                          onPressed: () async {
                            if (formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result =
                                  await _auth.signInEmail(email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      'User not found please supply a valid email';
                                  loading = false;
                                });
                              }
                            }
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 24,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          error,
                          style: TextStyle(color: bgred),
                        ),

                        Spacer(),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(
                                text: 'Don\'t have an Account ? ',
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Signup here',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signup()),
                                        );
                                      },
                                    style: TextStyle(
                                        // color: Theme.of(context).primaryColor,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //SizedBox(height: 16),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Already have an account?",
                        //       style:
                        //           TextStyle(color: Colors.white, fontSize: 17),
                        //     ),
                        //     GestureDetector(
                        //       onTap: () {
                        //         //   widget.toggle();
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         child: Text("Sign In",
                        //             style: TextStyle(
                        //                 color: Colors.white, fontSize: 17)),
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final AuthServices _auth = AuthServices();
//   final _formKey = GlobalKey<FormState>();
//   bool loading = false;

//   //text field state
//   String email = '';
//   String password = '';
//   String error = '';
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     print(MediaQuery.of(context).size.height);
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.blueGrey,
//               Colors.blueGrey[900],
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           child: Align(
//             alignment: Alignment.center,
//             child: Container(
//               height: height * .7,
//               width: width * .8333,
//               decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(.9),
//                   borderRadius: BorderRadius.circular(20)),
//               child: Stack(
//                 overflow: Overflow.visible,
//                 children: [
//                   Positioned(
//                       top: -50,
//                       left: MediaQuery.of(context).size.width * .265,
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             radius: width * .15,
//                             backgroundColor: Colors.red,
//                             // backgroundImage:
//                             //   //  AssetImage('images/conatusBlack.jpeg'),
//                           ),
//                         ],
//                       )),
//                   Positioned(
//                     top: height * .16,
//                     child: Container(
//                       width: width * .83,
//                       padding: EdgeInsets.all(8),
//                       child: Form(
//                         key: _formKey,
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 30, fontWeight: FontWeight.w300),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: TextFormField(
//                                 decoration:
//                                     textDeco.copyWith(labelText: 'Email'),
//                                 maxLines: 1,
//                                 validator: (val) =>
//                                     val.isEmpty ? 'Enter an email' : null,
//                                 onChanged: (val) {
//                                   setState(() => email = val);
//                                 },
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: TextFormField(
//                                 decoration:
//                                     textDeco.copyWith(labelText: 'Password'),
//                                 obscureText: true,
//                                 validator: (val) => val.length < 6
//                                     ? 'Password must have min 6 chars'
//                                     : null,
//                                 onChanged: (val) {
//                                   setState(() => password = val);
//                                 },
//                               ),
//                             ),
//                             SizedBox(height: 4),
//                             Align(
//                               alignment: Alignment.centerRight,
//                               child: Text('Forgot Password? ',
//                                   style: TextStyle(
//                                     color: Theme.of(context).primaryColor,
//                                     //fontStyle: FontStyle.italic,
//                                     //decoration: TextDecoration.underline,
//                                   )),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: -20,
//                     left: width * 0.27,
//                     child: GestureDetector(
//                       child: Container(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 25, vertical: 10),
//                           decoration: BoxDecoration(
//                               color: Colors.cyan[600],
//                               borderRadius: BorderRadius.circular(30)),
//                           child: Text('Sign in',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.w400))),
//                       onTap: () async {
//                         // Navigator.pushReplacement(context,
//                         //   MaterialPageRoute(builder: (_) => HomeScreen()));
//                         if (_formKey.currentState.validate()) {
//                           setState(() => loading = true);
//                           dynamic result = await _auth
//                               .registerWithEmailAndPassword(email, password);
//                           if (result == null) {
//                             setState(() {
//                               error = 'please supply a valid email';
//                               loading = false;
//                             });
//                           }
//                         }
//                       },
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(8, 8, 8, 40),
//                       child: RichText(
//                         text: TextSpan(
//                           text: 'Don\'t have an Account ? ',
//                           style: TextStyle(color: Colors.black),
//                           children: <TextSpan>[
//                             // TextSpan(
//                             //   text: 'Signup here',
//                             //   recognizer: TapGestureRecognizer()
//                             //     ..onTap = () {
//                             //       Navigator.push(
//                             //         context,
//                             //         MaterialPageRoute(
//                             //             builder: (context) => RegisterPage()),
//                             //       );
//                             //     },
//                             //   style: TextStyle(
//                             //       color: Theme.of(context).primaryColor,
//                             //       fontStyle: FontStyle.italic,
//                             //       decoration: TextDecoration.underline),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
