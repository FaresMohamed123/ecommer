
import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/resetpassword.dart';

abstract class ResetPasswordcontroller extends GetxController {
  goToSuccessResetpassword();
  resetPassword();
}

class ResetPasswordcontrollerImp extends ResetPasswordcontroller {
  late TextEditingController password1;
  late TextEditingController password2;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  ResetpasswordData resetpasswordData = ResetpasswordData(Get.find());
  String? email;
  @override
  goToSuccessResetpassword() async {
    if (password1.text != password2.text)
      {return Get.defaultDialog(
        title: 'ُWarning',
        middleText: 'password is not the same',
      );}

    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetpasswordData.postData(email!, password1.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.successResetpassword);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "${response['message']}");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  resetPassword() {}
  @override
  void onInit() {
    email = Get.arguments['email'];
    password1 = TextEditingController();
    password2 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password1.dispose();
    password2.dispose();
    super.dispose();
  }
}
