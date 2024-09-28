import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/views/Widget/common_text.dart';
import 'package:flutter/material.dart';

import 'Widget/common_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Stack(
              children: [
                Image.asset("assets/images/boarding_fill.png"),
                Positioned(
                    top: 120,
                    left: 120,
                    child: Image.asset("assets/images/onboarding.png"))
              ],
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * .4,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Shadow color with transparency
                    spreadRadius: 5, // How much the shadow will spread
                    blurRadius: 7, // How blurry the shadow will appear
                    offset:
                        Offset(0, 3), // Position of the shadow (x-axis, y-axis)
                  ),
                ],
                borderRadius:
                    BorderRadius.circular(10), // Optional: to round the corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommonText(
                      text:
                          "Discover your next skill \n Learn anything you  want! ",
                      color: AppColors.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    CommonText(
                      text:
                          "Discover your thing you want to \n Learn and grow with them ",
                      color: AppColors.primaryColor,
                    ),
                    CommonButton(buttonName: 'Get started',color: Colors.white,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


