import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/checkemail.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  goToVerfiyCode();
  checkemail();
  signIn();
}

class ForgetpasswordcontrollerImp extends Forgetpasswordcontroller {
  late TextEditingController email;
  StatusRequest statusRequest = StatusRequest.none;
  CheckemailsData checkemailsData = CheckemailsData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  goToVerfiyCode() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkemailsData.postData(email.text);
      print("===============================@ Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCode, arguments: {
            "email": email.text,
          });
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "email not found");
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
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  signIn() {
    Get.back();
  }
}
