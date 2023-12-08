import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GigglyGizmo',
      initialRoute: '/',
      home:
          HomeScreen(), //ichange ni para maka view ka sa imong page ganahan i tanaw na screen
    );
  }
}
