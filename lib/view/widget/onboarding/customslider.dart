import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import '../../../controller/onboarding_controller.dart';

import '../../../data/datasource/static/static.dart';

class CustomSliderOnBorarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBorarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (valu) {
        controller.onPageChanged(valu);
      },
      itemCount: OnBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(height: 25),
            Text(
              OnBoardingList[index].title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(100, 10),
                    const Offset(250, 100),
                    <Color>[
                      Colors.red,
                      Colors.yellow,
                    ],
                  ),
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              OnBoardingList[index].image!,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                OnBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}
