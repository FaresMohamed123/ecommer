import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class CustombuttonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustombuttonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(top: 5, left: 50, right: 50),
          child: MaterialButton(
            textColor: Colors.white,
            onPressed: () {
              controller.next();
            },
            child: const Text('Continue'),
          ),
        ),
        InkWell(
          onTap: () {
            controller.skip();
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: const Text(
              'Skip',
              style: TextStyle(color: AppColor.grey),
            ),
          ),
        ),
      ],
    );
  }
}
