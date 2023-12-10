// after login move to homescreen

// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/register.dart';
import 'package:gigglygizmo/user_authentication/widgets/form_container_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gigglygizmo/user_authentication/firebase_auth_services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isLoggingIn = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Image(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/Background.png')),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                        'assets/loginpage/AllWhite_Logo_w_text.png')),
                const SizedBox(
                  height: 30,
                ),
                 Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: FormContainerWidget(
                      hintText: 'Email',
                      isPasswordField: false,
                      controller: _emailController,
                    )),
                 Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: FormContainerWidget(
                      hintText: 'Password',
                      isPasswordField: true,
                      controller: _passwordController,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 0, right: 19),
                  child: Row(
                    children: [
                      // Checkbox(
                      //   value: true,
                      //   onChanged: (bool? value) {
                      //     onChanged(newValue);//add logic here idk pa unsa ibutang
                      //   },
                      // ),
                      Text('Keep me logged in',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                color: Colors.white, letterSpacing: .5),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                // GestureDetector(
                //   onTap: (){
                //     Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const HomeScreen()));
                //   }
                // ),
                Stack(
                  children: [
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          _signIn();
                        },
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xff25D1A8),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: const Color(0xff25D1A8),
                              width: 3.0,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Color(0xff2C4B44),
                                letterSpacing: .8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 180, right: 110, left: 140),
                    child: Row(
                      children: [
                        Text(
                          'No account yet?',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Color(0xffD7F2EC),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Positioned(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            child: Text(
                              ' Register here.',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Color(0xff25D1A8),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _isLoggingIn = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.loginWithEmailAndPassword(email, password);

    setState(() {
      _isLoggingIn = false;
    });

    // ignore: unnecessary_null_comparison
    if (user != null) {
      Fluttertoast.showToast(msg: "User is successfully logged in");
      Navigator.pushNamed(context, "/home");
    } else {
      Fluttertoast.showToast(msg: "some error occured");
    }
  }
}
