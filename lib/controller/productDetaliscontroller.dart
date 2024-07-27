import 'package:ecommerces_app/controller/cart_controller.dart';
import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:ecommerces_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';

abstract class Productdetaliscontroller extends GetxController {
  gotoCart();
}

class ProductdetaliscontrollerImp extends Productdetaliscontroller {
  late ItemsModel itemsModel;

  int countitems = 0; // تغيير countitems إلى int
  late StatusRequest statusRequest;
  late CartController cartController = Get.put(CartController());
  List<String> title = [
    'Red',
    'Black',
    'Blue',
  ];

  intialData() async {

    itemsModel = Get.arguments['itemsModel'];
    statusRequest = StatusRequest.loading;
    countitems = int.parse(await cartController
        .getCountItems(itemsModel.itemsId.toString())); // تحويل القيمة إلى int
    statusRequest = StatusRequest.success;
    update();
  } 

  add() {
    cartController.add(itemsModel.itemsId!);
    countitems++; // زيادة القيمة كعدد صحيح
    update(); // تحديث واجهة المستخدم بعد زيادة القيمة
  }

  remove() {
    if (countitems > 0) {
      cartController.delete(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }

  @override
  gotoCart() {
    Get.toNamed(AppRoute.cart);
  }

  @override
  void onInit() {
    intialData();

    super.onInit();
  }
}
