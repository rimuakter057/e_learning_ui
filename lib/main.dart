
import 'package:e_learning_ui/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ELearningUi ());
}

class ELearningUi extends StatelessWidget {
  const ELearningUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

