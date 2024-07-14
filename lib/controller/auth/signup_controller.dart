// ignore_for_file: avoid_print

import 'package:ecommerces_app/core/class/statusrequest.dart';
import 'package:ecommerces_app/core/functions/handingdatacontroller.dart';
import 'package:ecommerces_app/data/datasource/remote/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSignIn();
}

class SignupControllerImp extends SignupController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  StatusRequest statusRequest =StatusRequest.none;
  SignUpData signUpData = SignUpData(Get.find());
  List data = [];
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isshowpassword = false;
  showpassword() {
    isshowpassword = !isshowpassword ;
    update();
  }

  @override
  goToSignIn() {
    Get.offAndToNamed(AppRoute.login);
  }

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading; 
      update() ; 
      var response = await signUpData.postData(
          username.text, password.text, email.text, phone.text);
      print("===============================@ Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCodeSignUp  ,arguments: {
         "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      
    }
  }
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
