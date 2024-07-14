import 'package:ecommerces_app/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpassword/forgetpassword_controller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../widget/auth/customAppBar.dart';
import '../../../widget/auth/customauthtTitleaccount.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
   
        Get.put(ForgetpasswordcontrollerImp());
    return Scaffold(
      appBar: appBar('Forget Password'),
      body: GetBuilder<ForgetpasswordcontrollerImp>(
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
                      title: 'Check Email',
                      subtitle:
                          'Please Enter Your Enail Address To Recive A verification Code',
                    ),
                    const SizedBox(height: 30),
                    Customtextformauth(
                      hintText: 'Enter Your email',
                      iconData: Icons.email_outlined,
                      labeltext: 'Email',
                      mycontroller: controllerImp.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        return validInPut(val!, 10, 20, 'email');
                      },
                    ),
                    const SizedBox(height: 30),
                    Custombuttonauth(
                      title: 'Check',
                      onPressed: () {
                        controllerImp.goToVerfiyCode();
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomAuthtTitleAccount(
                      title: 'Do have on account? ',
                      subTitle: 'Back',
                      onTap: () {
                        controllerImp.signIn();
                      },
                    ),
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
