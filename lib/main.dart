
import 'package:e_learning_ui/views/demo_screen.dart';
import 'package:e_learning_ui/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ELearningUi ());
}

class ELearningUi extends StatelessWidget {
  const ELearningUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DemoScreen(),
    );
  }
}

