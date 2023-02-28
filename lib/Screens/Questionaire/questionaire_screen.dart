import 'package:project_dev99/Screens/Questionaire/Components/body.dart';
import 'package:flutter/material.dart';

class QuestionaireScreen extends StatelessWidget {
  const QuestionaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Body()),);
  }
}