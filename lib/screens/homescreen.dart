// tap on GigglyGizmo Icon move to convo style page
// tap on user picture move to profile page
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            child: SvgPicture.asset(
              'assets/Anim Icon.svg',
              height: 270,
              width: 270,
            ),
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Style()),
                    );
                  },
                  child: Image.asset('assets/GizmoNeonLogo.png'),
                ),
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
              const Positioned(
                top: 55,
                left: 30,
                child: Icon(
                  //from image, i changed it to an icon, blurry ang image.
                  Icons.settings,
                  color: Colors.white,
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
