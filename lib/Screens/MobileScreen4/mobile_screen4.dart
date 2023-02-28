import 'package:project_dev99/Screens/MobileScreen4/Components/body.dart';
import 'package:flutter/material.dart';

class MobileScreen4 extends StatelessWidget {
  const MobileScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}