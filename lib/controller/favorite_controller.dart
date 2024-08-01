// import 'package:ecommerces_app/core/constant/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../core/class/statusrequest.dart';
// import '../core/functions/handingdatacontroller.dart';
// import '../core/services/services.dart';
// import '../data/datasource/remote/favorite_data.dart';

// class FavoriteController extends GetxController {
//   List data = [];
//   late StatusRequest statusRequest;
//   Favoritedata favoritedata = Favoritedata(Get.find());

//   MyServices myServices = Get.find();
//   gotoMyFavroite() {
//     Get.toNamed(AppRoute.myfavroite);
//   }

//   Map isfavorite = {};
//   setFavorite(id, val) {
//     isfavorite[id] = val;
//     update();
//   }

//   addFavorite(String itemsid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await favoritedata.addFavorite(
//         myServices.sharedPreferences.getString("id").toString(), itemsid);
//     print("===============================@ Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         // data.addAll(response['data']);
//         Get.rawSnackbar(
//           title: "Success",
//           messageText: const Text(
//             "Added to favorite",
//             style: TextStyle(color: Colors.white),
//           ),
//         );
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//   }

//   removeFavorite(String itemsid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await favoritedata.deleteFavorite(
//         myServices.sharedPreferences.getString("id").toString(), itemsid);
//     print("===============================@ Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         // data.addAll(response['data']);
//         Get.rawSnackbar(
//           title: "removed",
//           messageText: const Text(
//             "removed to favorite",
//             style: TextStyle(color: Colors.white),
//           ),
//         );
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//   }
// }
