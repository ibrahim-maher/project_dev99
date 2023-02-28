import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// ignore: unused_import
import 'package:project_dev99/Screens/HomePage/Components/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}