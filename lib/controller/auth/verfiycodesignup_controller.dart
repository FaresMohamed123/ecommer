import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/auth/verfiycodesignup.dart';

abstract class VerifyCodeSignUpcontroller extends GetxController {
  goTosuccessSignUp( String verificationCodeSignUp);
  checkemail();
}

class VerifyCodeSignUpcontrollerImp extends VerifyCodeSignUpcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  late String verifycode;
  String? email;


  @override
  goTosuccessSignUp(  verificationCodeSignUp) async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await verifyCodeSignUpData.postData(email!, verificationCodeSignUp);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.successSignUp);
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
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
