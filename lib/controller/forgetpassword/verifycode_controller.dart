import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/verifycode.dart';

abstract class VerifyCodecontroller extends GetxController {
  goToResetPassword(String verifyCode);
  checkemail();
}

class VerifyCodecontrollerImp extends VerifyCodecontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  VerifycodeForgetPasswordData verifycodeForgetPasswordData = VerifycodeForgetPasswordData(Get.find());

  String? email;
  @override
  goToResetPassword(verifyCode) async{
     if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await verifycodeForgetPasswordData.postData(email!, verifyCode);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.resetPassword,
              arguments: {"email": email});
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "verificationCodeSignUp is false");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}

  }

  @override
  checkemail() {}
  
}
