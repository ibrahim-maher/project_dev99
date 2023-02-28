import 'package:project_dev99/Screens/WebsiteScreen/Components/body.dart';
import 'package:flutter/material.dart';

class WebsiteScreen extends StatelessWidget {
  const WebsiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}