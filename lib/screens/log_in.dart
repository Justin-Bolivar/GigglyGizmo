// after login move to homescreen

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:gigglygizmo/user_authentication/widgets/form_container_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 30.0),
                    child: 
                      FormContainerWidget(
                        hintText: 'Username',
                        isPasswordField: false,
                      )
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: FormContainerWidget(
                        hintText: 'Password',
                        isPasswordField: true,
                      )
                  ),
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
                              onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()));
                              },
                            
                          child: Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xff25D1A8),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: const Color(0xff25D1A8),
                                width: 3.0,),),

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
                          
                          Text(' Register here.',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Color(0xffD7F2EC),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))
                ],
              ),
          )
        ],
      ),
    );
  }
}
