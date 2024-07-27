import 'package:ecommerces_app/core/services/services.dart';
import 'package:get/get.dart';

TransLateDataBase(columnar, columnen) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "ar") {
       return columnar;
  } else {
    return columnen;
  }
}
