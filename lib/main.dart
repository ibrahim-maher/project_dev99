import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project_dev99/Screens/OnBoarding/on_boarding_screen.dart';
import 'package:project_dev99/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/SplashScreen/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SharedPreferences prefs;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developers 99',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: const Color(0xffFFF2E9),
      ),
      home:SplashScreen(),
    );
  }
}



