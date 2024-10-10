
import 'package:e_learning_ui/views/onboarding_screen.dart';
import 'package:e_learning_ui/views/otp_page.dart';
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
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
       textTheme: const TextTheme(
        bodyMedium: TextStyle(
            color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400
      )
    )
      ),
      home:  OtpPage (),
    );
  }
}

