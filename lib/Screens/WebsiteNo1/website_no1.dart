import 'package:project_dev99/Screens/WebsiteNo1/Components/body.dart';
import 'package:flutter/material.dart';

class WebsiteNo1 extends StatelessWidget {
  const WebsiteNo1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}