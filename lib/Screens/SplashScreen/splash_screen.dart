import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Guiding/guide_me_screen.dart';
import '../OnBoarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool newuser = true;

  @override
  void initState() {
    super.initState();
    loadNewLaunch();
  }
  loadNewLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email');
    final password = prefs.getString('password');

    setState(() {
      if (email != null && password != null) {
       newuser = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color(0xffFFF2E9),
      splashIconSize: 1000,
      splashTransition: SplashTransition.rotationTransition,
      splash: Image.asset("assets/images/developers99.png"),
      nextScreen: newuser? OnBoardingScreen():GuideMeScreen(),
    );
  }
}
