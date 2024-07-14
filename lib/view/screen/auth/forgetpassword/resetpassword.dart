import 'package:ecommerces_app/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpassword/resetpassword_controller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../widget/auth/customAppBar.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {

        Get.put(ResetPasswordcontrollerImp());
    return Scaffold(
      appBar: appBar('Reset Password'),
      body: GetBuilder<ResetPasswordcontrollerImp>(
        builder: (controllerImp) {
          return HandlingDataRequest(
            statusRequest: controllerImp.statusRequest,
            widget: Form(
              key: controllerImp.formstate,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                width: double.infinity,
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    const Customtexttitleauth(
                      title: 'New Password',
                      subtitle: 'Please Enter New Password',
                    ),
                    const SizedBox(height: 30),
                    Customtextformauth(
                      hintText: 'Enter Your password',
                      iconData: Icons.lock_outlined,
                      labeltext: 'PassWord',
                      mycontroller: controllerImp.password1,
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        return validInPut(val!, 10, 15, 'password');
                      },
                    ),
                    const SizedBox(height: 30),
                    Customtextformauth(
                      hintText: 'Re Enter Your password',
                      iconData: Icons.lock_outlined,
                      labeltext: 'PassWord',
                      mycontroller: controllerImp.password2,
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        return validInPut(val!, 10, 15, 'password');
                      },
                    ),
                    const SizedBox(height: 40),
                    Custombuttonauth(
                      title: 'save',
                      onPressed: () {
                        controllerImp.goToSuccessResetpassword();
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
