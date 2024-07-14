import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:ecommerces_app/core/constant/color.dart';
import 'package:ecommerces_app/core/constant/imgaeasset.dart';
import 'package:ecommerces_app/core/functions/alertexitapp.dart';
import 'package:ecommerces_app/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/login_controller.dart';
import '../../widget/auth/customAppBar.dart';
import '../../widget/auth/customauthtTitleaccount.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/custombuttonauthimages.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: appBar('9'.tr),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
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
                      radius: 75,
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
                      hintText: '12'.tr,
                      iconData: Icons.email_outlined,
                      labeltext: '18'.tr,
                      mycontroller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        return validInPut(val!, 5, 20, '18'.tr);
                      },
                    ),
                    const SizedBox(height: 30),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => Customtextformauth(
                        hintText: '13'.tr,
                        iconData: Icons.lock_outlined,
                        labeltext: '19'.tr,
                        mycontroller: controller.password,
                        keyboardType: TextInputType.phone,
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        validator: (val) {
                          return validInPut(val!, 5, 15, '19'.tr,);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 200),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child:  Text(
                          '14'.tr,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColor.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Custombuttonauth(
                      title: '15'.tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(height: 20),
                    const CustombuttonauthImages(),
                    CustomAuthtTitleAccount(
                      title:'16'.tr,
                      subTitle: '17'.tr,
                      onTap: () {
                        controller.goToSignUp();
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
