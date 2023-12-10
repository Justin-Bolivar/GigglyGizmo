// back button goes to homescreen

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Conversation extends StatelessWidget {
  const Conversation({super.key});

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
            //message field temporary placeholder before real textfield
            children: [
              Positioned(
                bottom: 10,
                left: 40,
                child: Image.asset('assets/border.png'),
              ),
              Positioned(
                bottom: 30,
                right: 55,
                child: Image.asset('assets/mic.png'),
              ),
              Positioned(
                bottom: 30,
                left: 60,
                child: Text(
                  'type message here.....',
                  style: GoogleFonts.chivo(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
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
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 100,
                    left: 150,
                    child: Image.asset(
                      'assets/robot.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    top: 310,
                    left: 130,
                    child: Text(
                      'Hi Im GigglyGizmo',
                      style: GoogleFonts.chivo(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 335,
                    left: 150,
                    child: Text(
                      'I may Laugh alot',
                      style: GoogleFonts.chivo(
                        color: const Color.fromARGB(255, 45, 235, 245),
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
