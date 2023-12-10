// back button to homescreen

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfilewData extends StatefulWidget {
  const ProfilewData({super.key});

  @override
  State<ProfilewData> createState() => _ProfilewDataState();
}

class _ProfilewDataState extends State<ProfilewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                    Navigator.pushNamed(context,'/home');
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                right: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'/settings');
                  }, child:const Icon(
                  //from image, i changed it to an icon, blurry ang image.
                  Icons.settings,
                  color: Colors.white,),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 350,
                left: 22,
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color:  Colors.black.withOpacity(0.4),
                      width: 0,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right:10,top: 10,left: 10,bottom: 10),
                        child: Image(
                          height:45,
                          width:45,
                          image: AssetImage('assets/English_flag.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 23),
                        child: Text(
                          'Language Proficiency Level',
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 400,
                left: 78,
                child: LinearPercentIndicator(
                  width: 260.0,
                  lineHeight: 5,
                  percent: 0.55,
                  backgroundColor:const Color(0xffD9D9D9),
                  progressColor: const Color(0xff25D1A8),
                  barRadius: const Radius.circular(20),
              ),),
              Positioned(
                top: 395,
                left: 338,
                child: Text(
                          '55%',
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w100
                          ),
                        ),
              )
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