import 'package:ecommerces_app/core/services/services.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';

class Settingcontroller extends GetxController {
  MyServices myServices = Get.find();
  logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
