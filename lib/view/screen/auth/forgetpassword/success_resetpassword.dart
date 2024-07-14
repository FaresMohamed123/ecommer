import 'package:ecommerces_app/core/constant/color.dart';
import 'package:ecommerces_app/view/widget/auth/customAppBar.dart';
import 'package:ecommerces_app/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/successresetpassword_controller.dart';
import '../../../../core/class/handlingdataview.dart';

class SuccessResetpassword extends StatelessWidget {
  const SuccessResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
   
        Get.put(SuccessresetpasswordControllerImp());
    return Scaffold(
      appBar: appBar('SuccessResetpassword'),
      body: GetBuilder<SuccessresetpasswordControllerImp>(
        builder: (controllerImp) {
          return HandlingDataRequest(
            statusRequest:controllerImp.statusRequest ,
            widget: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 200,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  const Center(child: Text('....SuccessResetpassword')),
                  const Spacer(),
                  Custombuttonauth(
                      onPressed: () {
                        controllerImp.goToLogin();
                      },
                      title: 'Go To Login'),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
