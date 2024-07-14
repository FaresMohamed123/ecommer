import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<OnboardingControllerImp>(
      builder: (controller) =>  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              OnBoardingList.length,
              (index) {
                return AnimatedContainer(
                  margin: const EdgeInsets.all(5),
                  duration: const Duration(
                    milliseconds: 900,
                  ),
                  width: controller.currentPage  ==index ? 20:5,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            )
          ],
      
      ),
    );
  }
}
