import 'package:ecommerces_app/core/constant/color.dart';
import 'package:ecommerces_app/view/widget/auth/customAppBar.dart';
import 'package:ecommerces_app/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successsignup_controller.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: appBar('SuccessSignup'),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            const Center(child: Text('....SuccessSignup')),
            const Spacer(),
            Custombuttonauth(
                onPressed: () {
                  controller.goToLogin();
                },
                title: '31'.tr),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
