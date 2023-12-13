// back button to homescreen

import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _username = "John Doe"; // Set a default username

  @override
  void initState() {
    super.initState();
    _initHive();
  }

  Future<void> _initHive() async {
    await Hive.openBox('userBox'); // Open the Hive box before using it
    _loadUsernameFromHive();
  }

  Future<void> _changeUsernameDialog() async {
    TextEditingController _usernameController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Username'),
          content: TextField(
            controller: _usernameController,
            decoration: InputDecoration(labelText: 'New Username'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                setState(() {
                  _username = _usernameController.text;
                });
                _storeUsernameInHive(_username);
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _storeUsernameInHive(String username) {
    // Store the username in Hive
    var userBox = Hive.box('userBox');
    userBox.put('username', username);
  }

  Future<void> _loadUsernameFromHive() async {
    var userBox =
        await Hive.openBox('userBox'); // Open the Hive box before using it
    setState(() {
      _username = userBox.get('username', defaultValue: "John Doe");
    });
  }

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
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profileWData');
                  },
                  child: Image.asset(
                    'assets/BigProfile.png',
                    alignment: Alignment.center,
                  ),
                ),
              )
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
              Positioned(
                top: 55,
                right: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 350,
                left: 60,
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xffBED8FF),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: const Color(0xffBED8FF),
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'TAKE LANGUAGE PROFICIENCY TEST',
                      style: GoogleFonts.chivo(
                        color: const Color(0xff404040),
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
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
                child: GestureDetector(
                  onTap: _changeUsernameDialog,
                  child: Text(
                    _username,
                    style: GoogleFonts.chivo(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
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
