import 'package:flutter/material.dart';
import 'package:project_dev99/Screens/Login/Components/body.dart';
// ignore: use_key_in_widget_constructors

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // ignore: sized_box_for_whitespace
      body: SafeArea(child: Body()),
    );
  }
}

