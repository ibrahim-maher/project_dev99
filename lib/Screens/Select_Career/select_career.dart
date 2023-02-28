import 'package:project_dev99/Screens/Select_Career/Components/body.dart';
import 'package:flutter/material.dart';

class SelectCareer extends StatelessWidget {
  const SelectCareer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}