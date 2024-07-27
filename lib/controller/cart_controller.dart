import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/cartdata.dart';
import '../data/model/cartmodel.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  CartModel cartModel = CartModel();
  List<CartModel> data = [];

  double priceorders = 0.0;

  int totalcountitems = 0;
  sumCount() {
    var sum = priceorders + totalcountitems;
    return sum;
  }

 

  add(String itemsid) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.addCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة المنتج الى السلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  delete(String itemsid) async {
    statusRequest = StatusRequest.loading;

    var response = await cartData.deleteCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم ازالة المنتج من السلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  getCountItems(String itemsid) async {
    statusRequest = StatusRequest.loading;

    var response = await cartData.getCountCart(
        myServices.sharedPreferences.getString("id").toString(), itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        String countItems = '0';
        countItems = response['data'].toString();
        print('====================================');
        // ignore: unnecessary_string_interpolations
        print('$countItems');
        return countItems;
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  resetVarCart() {
    totalcountitems = 0;
    priceorders = 0.0;
    data.clear();
  }

  refreshPage() {
    resetVarCart();
    view();
  }

  view() async {
    statusRequest = StatusRequest.loading;

    var response = await cartData
        .viewCart(myServices.sharedPreferences.getString("id").toString());
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        // if (response['datacart']['status'] == 'success') {
        List dataresponse = response['datacart'];
        Map dataresponsecountprice = response['countprice'];
        data.clear();
        data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
        totalcountitems =
            int.parse(dataresponsecountprice['totalcount'].toString());
        priceorders =
            double.parse(dataresponsecountprice['totalprice'].toString());
        print(priceorders);
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
    // End
    //}
    update();
  }

  @override
  void onInit() {
    view();

    super.onInit();
  }
}
