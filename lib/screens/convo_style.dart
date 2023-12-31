// any button here goes to convo page

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/convo.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Style extends StatelessWidget {
  const Style({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/Background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Stack(
            children: [
              Positioned(
                top: 55,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Stack(
            children: [
              Positioned(
                top: 110,
                left: 100,
                child: Image(
                  height: 100,
                    width: 200,
                    image: AssetImage(
                        'assets/WhiteLogo_wText_horizontal.png')),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 200,
                left: 95,
                child: Text(
                  'Choose conversation Style',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 115,
                child: Text(
                  'How would you like to converse ?',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 13,
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 150,
                child: Text(
                  'Youre almost there!',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 350,
                    left: 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Conversation()),
                        );
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
                        child: Center(
                          child: Text(
                            'CASUAL',
                            style: GoogleFonts.chivo(
                              color: const Color(0xff2C4B44),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 420,
                left: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const Conversation()),
                    );
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
                    child: Center(
                      child: Text(
                        'FORMAL',
                        style: GoogleFonts.chivo(
                          color: const Color(0xffF2FBF9),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}