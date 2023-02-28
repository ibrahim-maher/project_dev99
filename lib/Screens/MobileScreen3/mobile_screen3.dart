import 'package:project_dev99/Screens/MobileScreen3/Components/body.dart';
import 'package:flutter/material.dart';

class MobileScreen3 extends StatelessWidget {
  const MobileScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}