import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  
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
                    height: 100,
                    width: 100,
                    image: AssetImage(
                        'assets/sad_gizmo_logo.png')),
                Padding(padding:
                        const EdgeInsets.only(bottom: 100),
                        child: Text(
                          
                          "You're leaving Gizmo already?",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        ),
                // const SizedBox(
                //   height: 30,
                // ),

                Stack(
                children: [
                  Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,'/login');
                        },
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xff76928B).withOpacity(.1),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: const Color(0xff76928B).withOpacity(.2),
                              width: 0.1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'LOGOUT',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                color: Color(0xffC4D0CD), letterSpacing: .6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    
                  ),
                ],
              ),

              ]
            )
          ),
          Stack(
            children: [
              Positioned(
                top: 55,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'/home');
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          
          
        ]
      )
    );
  }
}
