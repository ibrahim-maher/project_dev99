// ignore_for_file: file_names

import 'package:project_dev99/Screens/WebScreen2/Components/body.dart';
import 'package:flutter/material.dart';

class WebScreen2 extends StatelessWidget {
  const WebScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}