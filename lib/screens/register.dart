//after finishing to register move to homescreen page

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:gigglygizmo/screens/log_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gigglygizmo/user_authentication/widgets/form_container_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                  padding: EdgeInsets.only(bottom: 0.0),
                    child: FormContainerWidget(
                        hintText: 'Email',
                        isPasswordField: false,
                      )
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                    child: FormContainerWidget(
                        hintText: 'Password',
                        isPasswordField: true,
                      )
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                    child: FormContainerWidget(
                        hintText: 'Re-enter Password',
                        isPasswordField: true,
                      )
                ),

                const SizedBox(height: 40,),
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
                                color: const Color(0xff2D81FF),
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: const Color(0xff2D81FF),
                                  width: 3.0,
                                ),
                              ),
                              child: const Center(child: Text('REGISTER',
                                  style: TextStyle(
                                      color: Color(0xffF2FBF9),
                                      letterSpacing: .8,
                                        
                                    ),),),),),

                      ),
                    ],
                ),
                  Padding(
                    
                      padding: const EdgeInsets.only(top: 120,right: 100,left: 125),
                      child: Row(
                        children: [
                          Text('Already have an account?' ,
                            style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC),
                            fontSize: 10,
                            ),
                          ),),
                          Positioned(child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const LogIn()));
                              },
                                  child: Text(' Login here.',
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                          color: Color(0xff4992FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    
                                    ),
                              ),)
                        ],
                      )
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
