import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';

abstract class SuccessresetpasswordController extends GetxController {
  goToLogin();
}

class SuccessresetpasswordControllerImp extends SuccessresetpasswordController {
   StatusRequest statusRequest = StatusRequest.none;

  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.homepage);
  }
}
