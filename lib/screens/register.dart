//after finishing to register move to homescreen page

// ignore_for_file: prefer_final_fields

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:gigglygizmo/screens/log_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gigglygizmo/user_authentication/widgets/form_container_widget.dart';
import 'package:gigglygizmo/user_authentication/firebase_auth_services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: unused_field
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordVerifyController = TextEditingController();

  bool isRegister = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordVerifyController.dispose();
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
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: FormContainerWidget(
                      hintText: 'Username',
                      isPasswordField: false,
                      controller: _usernameController,
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: FormContainerWidget(
                      hintText: 'Email',
                      isPasswordField: false,
                      controller: _emailController,
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: FormContainerWidget(
                      hintText: 'Password',
                      controller: _passwordController,
                      isPasswordField: true,
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: FormContainerWidget(
                      hintText: 'Re-enter Password',
                      isPasswordField: true,
                      controller: _passwordVerifyController,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          _register();
                        },
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xff2D81FF),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: const Color(0xff2D81FF),
                              width: 3.0,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'REGISTER',
                              style: TextStyle(
                                color: Color(0xffF2FBF9),
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
                        const EdgeInsets.only(top: 120, right: 100, left: 125),
                    child: Row(
                      children: [
                        Text(
                          'Already have an account?',
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
                                      builder: (context) => const LogIn()));
                            },
                            child: Text(
                              ' Login here.',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Color(0xff4992FF),
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

// ignore: unused_element
  void _register() async {
    setState(() {
      isRegister = true;
    });

    // String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String verifyPassword = _passwordVerifyController.text;

    User? user = await _auth.registerWithEmailAndPassword(email, password);

    setState(() {
      isRegister = false;
    });
    if (user != null && password==verifyPassword) {
      Fluttertoast.showToast(msg: "User is successfully created");
      Navigator.pushNamed(context, "/home");
      } else if (password != verifyPassword) {
      Fluttertoast.showToast(msg: "Password doesn't match");
    } else {
      Fluttertoast.showToast(msg: "Some error happend");
    }
  }
}
