//after finishing to register move to homescreen page

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                        width: 1.5, color: Color(0xffD7F2EC)),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      label: Text('Username',style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC)
                            ),),),
                      fillColor: const Color(0xffD8D8DD),
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                        width: 1.5, color: Color(0xffD7F2EC)),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      label: Text('Email',style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC)
                            ),),),
                      filled: false,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                        width: 1.5, color: Color(0xffD7F2EC)),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      label: Text('Password',style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC)
                            ),),),
                      suffixIcon: const Icon(Icons.visibility_off, color: Color(0xffD7F2EC)),
                      filled: false,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30.0,left: 30.0, top: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                        width: 1.5, color: Color(0xffD7F2EC)),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      label: Text('Re-enter Password',style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC)
                            ),),),
                      suffixIcon: const Icon(Icons.visibility_off, color: Color(0xffD7F2EC)),
                      filled: false,
                    ),
                  ),
                ),

                const SizedBox(height: 40,),
                Container(
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
                              
                          ),),), 
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
                          Text(' Login here.',
                            style: GoogleFonts.roboto(
                            textStyle: const TextStyle(color: Color(0xffD7F2EC),
                            fontSize: 10,
                            fontWeight: FontWeight.bold
                            ),
                        )),
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
