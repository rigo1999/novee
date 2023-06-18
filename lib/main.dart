
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nova/Screen/Homescreen/homescreen.dart';
import 'package:nova/Screen/auth/signup.dart';
import 'package:nova/Screen/auth/forgotpassword.dart';
import 'package:nova/Screen/navigtion_screen/navigtion_home.dart';
import 'package:nova/firebase_options.dart';

import 'Screen/OnboardingScreen/OnboardingScreen.dart';
import 'Screen/auth/loginscreen.dart';
import 'Screen/SplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: SplashScreen(),
      //OnboardingScreen
        //IconThemeData(color: Colors.purpleAccent),
      initialRoute:  '/homescreen',
      routes: {
        '/SplashScreen' :(context)=>SplashScreen(),
        '/OnboardingScreen':(context)=>OnboardingScreen(),
        '/loginscreen':(context)=>loginscreen(),
  '/signup' : (context)=>signup(),
        '/homescreen' : (context)=>homescreen(),
        '/forgotpassword' : (context)=>forgotpassword(),
        '/home_screen' : (context)=>home_screen(),


      },
    );
  }
}
