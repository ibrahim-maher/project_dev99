import 'package:project_dev99/Screens/MobileScreen/Components/body.dart';
import 'package:flutter/material.dart';

class MobileApplicationScreen extends StatelessWidget {
  const MobileApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}