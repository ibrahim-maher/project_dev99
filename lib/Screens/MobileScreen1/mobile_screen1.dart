import 'package:project_dev99/Screens/MobileScreen1/Components/body.dart';
import 'package:flutter/material.dart';

class MobileSceen1 extends StatelessWidget {
  const MobileSceen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}