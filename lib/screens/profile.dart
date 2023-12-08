// back button to homescreen

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                top: 100,
                left: 100,
                child: Image.asset(
                  'assets/BigProfile.png',
                  alignment: Alignment.center,
                ),
              ),
            ],
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
                  child: Image.asset(
                    'assets/arrowleft.png',
                    alignment: Alignment.topRight,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                right: 30,
                child: Image.asset(
                  'assets/Settings Icon.png',
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 350,
                left: 95,
                child: Image.asset(
                  'assets/GlowButton.png',
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                top: 369,
                left: 113,
                child: Image.asset(
                  'assets/LanguageProficiencyButton.png',
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                top: 376,
                left: 118,
                child: Text(
                  'TAKE LANGUAGE PROFICIENCY TEST',
                  style: GoogleFonts.chivo(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 280,
                left: 165,
                child: Text(
                  'UserName',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                top: 305,
                left: 180,
                child: Text(
                  'ID: 123456789',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 10,
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 20,
                child: Text(
                  'Chat History',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                top: 450,
                right: 20,
                child: Image.asset(
                  'assets/Filter.png',
                  alignment: Alignment.topRight,
                ),
              ),
              Positioned(
                top: 530,
                right: 138,
                child: Text(
                  'No Chat History',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
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
