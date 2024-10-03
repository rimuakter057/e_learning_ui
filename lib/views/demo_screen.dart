import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'Widget/common_text.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/FirstImage.jpg"),
            const SizedBox(
              height: 70,
            ),
            CommonText(
              text: 'Simplify, Organize, and ',
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.sizeOf(context).height * .035,
            ),
            Text.rich(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.sizeOf(context).height * .035,
                    fontWeight: FontWeight.bold),
                TextSpan(children: [
                  const TextSpan(text: 'Conquer '),
                  TextSpan(
                      text: 'Your Day',
                      style: TextStyle(color: AppColors.blueColor)),
                ])),
            const SizedBox(
              height: 10,
            ),
            CommonText(
              text: 'Take control of your tasks and \n archive your goals. ',
              fontSize: MediaQuery.sizeOf(context).height * .022,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
