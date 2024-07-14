import 'package:ecommerces_app/controller/forgetpassword/verifycode_controller.dart';
import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../widget/auth/customAppBar.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(VerifyCodecontrollerImp());
    return Scaffold(
      appBar: appBar('Verify Code'),
      body: GetBuilder<VerifyCodecontrollerImp>(
        builder: (controllerImp) {
          return HandlingDataRequest(
            statusRequest: controllerImp.statusRequest, 
            widget: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              width: double.infinity,
              child: ListView(
                children: [
                  const SizedBox(height: 30),
                  const Customtexttitleauth(
                    title: 'Check Code',
                    subtitle: 'Please Enter The Digit Code Sent To fares@gmail.com',
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
                    onSubmit: (String verificationCode) {
                      controllerImp.goToResetPassword(verificationCode);
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
