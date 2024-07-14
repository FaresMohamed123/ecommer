import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verfiycodesignup_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/auth/customAppBar.dart';
import '../../widget/auth/customtexttitleauth.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpcontrollerImp controllerImp =
        Get.put(VerifyCodeSignUpcontrollerImp());
    return Scaffold(
      appBar: appBar('VerifyCodeSignUp'),
      body:GetBuilder<VerifyCodeSignUpcontrollerImp>(
        builder: (controller) =>
         HandlingDataRequest(
          statusRequest: controllerImp.statusRequest,
          widget:Container(
                   padding: const EdgeInsets.symmetric(
            horizontal: 30,
                   ),
                   width: double.infinity,
                   child: ListView(
            children: [
              const SizedBox(height: 30),
              const Customtexttitleauth(
                title: 'Check Code',
                subtitle: 'Please Enter The Digit Code Sent ',
              ),
              const SizedBox(height: 30),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                enabledBorderColor: AppColor.grey,
                focusedBorderColor: AppColor.primaryColor,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCodeSignUp) {
                  controllerImp.goTosuccessSignUp (verificationCodeSignUp);
                },
              ),
              const SizedBox(height: 20),
            ],
                   ),
                 ),
         ),
      )
    );
  }
}
