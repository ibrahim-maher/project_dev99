import 'package:project_dev99/Screens/WebsiteNo/Components/body.dart';
import 'package:flutter/material.dart';

class WebsiteNo extends StatelessWidget {
  const WebsiteNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}