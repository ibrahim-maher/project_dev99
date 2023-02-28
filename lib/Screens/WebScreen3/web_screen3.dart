import 'package:project_dev99/Screens/WebScreen3/Components/body.dart';
import 'package:flutter/material.dart';

class WebScreen3 extends StatelessWidget {
  const WebScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}