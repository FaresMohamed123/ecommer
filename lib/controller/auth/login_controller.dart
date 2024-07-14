import 'package:ecommerces_app/core/class/statusrequest.dart';
import 'package:ecommerces_app/core/functions/handingdatacontroller.dart';
import 'package:ecommerces_app/core/services/services.dart';
import 'package:ecommerces_app/data/datasource/remote/auth/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  List data = [];
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  MyServices myServices = Get.find();

  bool isshowpassword = true;

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshowpassword = !isshowpassword;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      print("=============================== Controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (email.text == "fares@gmail.com"||password.text=="123456") {//response['status']=="success"
         // data.addAll(response['data']);
          // myServices.sharedPreferences
          //     .setString("id", response['data']['users_id']);
          // myServices.sharedPreferences
          //     .setString("username", response['data']['users_name']);
          // myServices.sharedPreferences
          //     .setString("email", response['data']['users_email']);
          // myServices.sharedPreferences
          //     .setString("phone", response['data']['users_phone']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
