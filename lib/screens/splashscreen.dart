//screen before login
import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/log_in.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LogIn()),
          (route) => false);
    });
  }

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
                gradient: LinearGradient(colors: [
              const Color(0xFF2D81FF).withOpacity(0.6),
              const Color(0xFF25D1A8).withOpacity(0.6)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          const Align(
              alignment: Alignment.center,
              child: Image(
                  height: 250,
                  width: 250,
                  image:
                      AssetImage('assets/loginpage/AllWhite_Logo_w_text.png')))
        ],
      ),
    );
  }
}
