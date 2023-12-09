//screen before login
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => SplashscreenState();
}
class SplashscreenState extends State<Splashscreen> {

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
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color(0xFF2D81FF).withOpacity(0.6),
                        const Color(0xFF25D1A8).withOpacity(0.6)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Image(
              height: 250,
              width: 250,
              image: AssetImage('assets/loginpage/AllWhite_Logo_w_text.png')))
        ],
      ),
    );
  }
}