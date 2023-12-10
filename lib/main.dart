import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gigglygizmo/screens/homescreen.dart';
import 'package:gigglygizmo/screens/log_in.dart';
import 'package:gigglygizmo/screens/splashscreen.dart';
import 'firebase_options.dart';
// import 'package:gigglygizmo/screens/register.dart';

// import 'screens/homescreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
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
      home:Splashscreen(
        child: LogIn(),
      )
          
    );
  }
}
