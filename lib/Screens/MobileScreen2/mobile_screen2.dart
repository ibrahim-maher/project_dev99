import 'package:project_dev99/Screens/MobileScreen2/Components/body.dart';
import 'package:flutter/material.dart';

class MobileScreen2 extends StatelessWidget {
  const MobileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}