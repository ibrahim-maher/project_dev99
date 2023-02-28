import 'package:project_dev99/Screens/WebScreen4/Components/body.dart';
import 'package:flutter/material.dart';

class WebScreen4 extends StatelessWidget {
  const WebScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}