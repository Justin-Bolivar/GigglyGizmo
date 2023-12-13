import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Image(
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('assets/Background.png')),
      Positioned(
        top: 270,
        left: 55,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/update");
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
                  'UPDATE EMAIL',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Color(0xffC4D0CD), letterSpacing: .6),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage('assets/sad_gizmo_logo.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
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
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, "/login");
                      Fluttertoast.showToast(msg: "Successfully logged out");
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
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Text(
                "_____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 3,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 10),
              child: Text(
                "Delete Account",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            IconButton(
              color: Colors.white,
              icon: const Icon(
                Icons.delete_forever_sharp,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Delete your Account?'),
                      content: const Text(
                          '''Are you sure you want to delete your account when deleted you would not be able to Login and retrieve your data afterwards'''),
                      actions: [
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.red)),
                          onPressed: () async {
                            await FirebaseAuth.instance.currentUser?.delete();
                            await FirebaseAuth.instance.signOut();
                            Navigator.pushNamed(context, "/login");
                            Fluttertoast.showToast(
                                msg: "Successfully deleted account");
                          },
                        ),
                      ],
                    );
                  },
                );
              },
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
                Navigator.pushNamed(context, '/home');
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
