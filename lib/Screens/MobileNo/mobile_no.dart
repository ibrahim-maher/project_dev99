import 'package:project_dev99/Screens/MobileNo/Components/body.dart';
import 'package:flutter/material.dart';

class MobileNo extends StatelessWidget {
  const MobileNo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}