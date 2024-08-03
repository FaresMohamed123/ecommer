import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/cartdata.dart';
import '../data/model/itemsModel.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late StatusRequest statusRequest;
  CartData cartData = CartData(Get.find());

  MyServices myServices = Get.find();
  int countItems = 0;
  late ItemsModel itemsModel;
  intialData() async {
    statusRequest = StatusRequest.loading;
    itemsModel = Get.arguments['itemsmodel'];
    countItems = await getCountItems(itemsModel.itemsId!);
    statusRequest = StatusRequest.success;
    update();
  }

  List subitems = [
    {"name": "red", "id": 1, "active": '0'},
    {"name": "yallow", "id": 2, "active": '0'},
    {"name": "black", "id": 3, "active": '1'}
  ];
  
  getCountItems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.getCountCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        int countItems = 0;
        countItems = int.parse(response['data'].toString());
        print('====================================getCountItems $countItems');
        return countItems;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
  additems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.addCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controlleradd $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة المنتج الى السلة "));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  removeitems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.deleteCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم ازالة المنتج من السلة "));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
  add() {
   
  
    additems(itemsModel.itemsId!);
      countItems++;
    update();
  }

  remove() {
    if (countItems > 0) {
     
      removeitems(itemsModel.itemsId!);
       countItems--;
    }
    update();
  }
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
