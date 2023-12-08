// tap on GigglyGizmo Icon move to convo style page
// tap on user picture move to profile page
import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/convo_style.dart';
import 'package:gigglygizmo/screens/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          Center(
            child: Image.asset(
              'assets/NeonCIrcle.png',
              //fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Style()),
                );
              },
              child: Image.asset(
                'assets/GizmoNeonLogo.png',
                //fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 10,
                right: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                  child: Image.asset(
                    'assets/UserProfile.png',
                    alignment: Alignment.topRight,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 30,
                child: Image.asset(
                  'assets/Settings Icon.png',
                  alignment: Alignment.topLeft,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 150,
                left: 100,
                child: Text(
                  'Your Language Buddy',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: 98,
                child: Text(
                  'Improve your Language Proficiency',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 13,
                  ),
                ),
              ),
              Positioned(
                bottom: 250,
                left: 150,
                child: Text(
                  'Talk to GigglyGizmo',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
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
