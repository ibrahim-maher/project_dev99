import 'package:project_dev99/Screens/Welcome/Components/body.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(child: Body()),);
  }
}