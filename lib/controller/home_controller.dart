import 'package:ecommerces_app/core/class/statusrequest.dart';
import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:ecommerces_app/core/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/home_data.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  gotoMyFavroite();
  gotoItems(List categories, int selectedCat, String categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  bool issearch = false;
  String? username;
  String? id;
  String? lang;
  HomeData homedata = HomeData(Get.find());
  TextEditingController? search;
  List data = [];
  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    search = TextEditingController();
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  gotoItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.itemspage, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  checkSearch(val) {
    if (val == "") {
      issearch = false;
    }
    update();
  }

  onsearchitems() {
    issearch = true;
    update();
  }
  
  @override
  gotoMyFavroite() {
  Get.toNamed(AppRoute.myfavroite);
  }
}


