import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'Widget/container_otp.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 160, 20, 20),
            child: SizedBox(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.document_scanner_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text("Email verification Code",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 25,
                            )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter the 5 digits code that we have sent \n"
                  "through your email. \n"
                  "Code is required for verification.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.sizeOf(context).height * .6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ContainerWidget(),
                        ContainerWidget(),
                        ContainerWidget(),
                        ContainerWidget(),
                        ContainerWidget(),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_alarm_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        "7:15",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
            
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                          child: Text(
                            "Next",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
