import '/core/class/handlingdataview.dart';
import '/core/constant/imgaeasset.dart';
import '/core/functions/alertexitapp.dart';
import '/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../widget/auth/customAppBar.dart';
import '../../widget/auth/customauthtTitleaccount.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupControllerImp());
    return Scaffold(
      appBar: appBar('17'.tr),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignupControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
              key: controller.formstate,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                width: double.infinity,
                child: ListView(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          AppImageAsset.logo1,
                          height: 160,
                        ),
                      ),
                    ),
                     Customtexttitleauth(
                      title: '10'.tr,
                      subtitle:
                          '11'.tr,
                    ),
                    Customtextformauth(
                      hintText: '23'.tr,
                      iconData: Icons.person_add_alt_outlined,
                      labeltext: '20'.tr,
                      mycontroller: controller.username,
                      keyboardType: TextInputType.name,
                      validator: (val) {
                        return validInPut(val!, 5, 15, '20'.tr);
                      },
                    ),
                    const SizedBox(height: 25),
                    Customtextformauth(
                      hintText: '12'.tr,
                      iconData: Icons.email_outlined,
                      labeltext: '18'.tr,
                      mycontroller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        return validInPut(val!, 10, 20, '18'.tr);
                      },
                    ),
                    const SizedBox(height: 25),
                    Customtextformauth(
                      hintText: '22'.tr,
                      iconData: Icons.phone_android_outlined,
                      labeltext: '21'.tr,
                      mycontroller: controller.phone,
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        return validInPut(val!, 11, 12, '21'.tr);
                      },
                    ),
                    const SizedBox(height: 25),
                    GetBuilder<SignupControllerImp>(
                      builder: (controller) => Customtextformauth(
                        hintText: '13'.tr,
                        iconData: Icons.lock_outlined,
                        labeltext: '19'.tr,
                        mycontroller: controller.password,
                        keyboardType: TextInputType.phone,
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showpassword();
                        },
                        validator: (val) {
                          return validInPut(val!, 10, 20, '19'.tr);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Custombuttonauth(
                      title: '17'.tr,
                      onPressed: () {
                        controller.signUp();
                      },
                    ),
                    const SizedBox(height: 10),
                    // const CustombuttonauthImages(),
                    CustomAuthtTitleAccount(
                      title: '16'.tr,
                      subTitle: '15'.tr,  
                      onTap: () {
                        controller.goToSignIn();
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
