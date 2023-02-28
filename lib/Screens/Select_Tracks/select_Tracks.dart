import 'package:project_dev99/Screens/Select_Tracks/Components/body.dart';
import 'package:flutter/material.dart';

class SelectTracks extends StatelessWidget {
  const SelectTracks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}