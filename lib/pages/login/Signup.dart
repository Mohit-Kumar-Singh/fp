import 'package:Footprints/models/customButtons.dart';
import 'package:Footprints/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool loading = false;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailTextEditingController =
      new TextEditingController();

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
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'WELCOME  FELLAS',
                          style: GoogleFonts.ebGaramond(
                              color: Colors.black, fontSize: 27),
                        ),
                        SizedBox(
                          height: 8,
                        ),
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
                                validator: (val) => val.length < 6
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
                            // Navigator.pushReplacement(context,
                            //   MaterialPageRoute(builder: (_) => HomeScreen()));
                            if (formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email, password);
                              if (result == null) {
                                setState(() {
                                  error = 'please supply a valid email';
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

                        Spacer(),

                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: RichText(
                        //       textAlign: TextAlign.end,
                        //       text: TextSpan(
                        //         text: 'Don\'t have an Account ? ',
                        //         style: TextStyle(color: Colors.black),
                        //         children: <TextSpan>[
                        //           TextSpan(
                        //             text: 'Signup here',
                        //             recognizer: TapGestureRecognizer()
                        //               ..onTap = () {
                        //                 Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => Signup()),
                        //                 );
                        //               },

                        //             style: TextStyle(
                        //                 // color: Theme.of(context).primaryColor,
                        //                 fontStyle: FontStyle.italic,
                        //                 decoration: TextDecoration.underline),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),

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
