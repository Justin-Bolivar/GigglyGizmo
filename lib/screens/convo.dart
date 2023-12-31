// back button goes to homescreen

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
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
          ChatBubble(
            clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.only(bottom: 100),
            backGroundColor: const Color(0xff9DEAD8),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "Hello Gizmo I am currently free and I am looking for someone to talk to are you available right now?",
                style: GoogleFonts.chivo(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          ChatBubble(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(bottom: 190),
            clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
            backGroundColor: const Color(0xff8E98A8),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "Hello I am Giggly Gizmo your Language Buddy   ฅ^•ﻌ•^ฅ",
                style: GoogleFonts.chivo(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                    top: 780.0,
                  ),
                  child: TextField(
                  
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/mic.png',height: 10,width: 10,),
                      labelText: 'type message here...',
                      labelStyle: GoogleFonts.chivo(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.5, color: Color(0xffD7F2EC)),
                        borderRadius: BorderRadius.circular(50.0),
                        
                      ),
                      fillColor: const Color(0xffD8D8DD),
                      filled: false,
                    ),
                  ),
                ),
              ],
            ),
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
