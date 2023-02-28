import 'package:project_dev99/Screens/WebScreen1/Components/body.dart';
import 'package:flutter/material.dart';

class WebScreen1 extends StatelessWidget {
  const WebScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}