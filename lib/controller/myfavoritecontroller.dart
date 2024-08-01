// import 'package:ecommerces_app/data/datasource/remote/myfavorite_data.dart';
// import 'package:ecommerces_app/data/model/myfavoritemodel.dart';
// import 'package:get/get.dart';
// import '../core/class/statusrequest.dart';
// import '../core/functions/handingdatacontroller.dart';
// import '../core/services/services.dart';

// class MyFavoriteController extends GetxController {
//   List<MyFavoriteModel> data = [];
//   late StatusRequest statusRequest;
//   MyFavoritedata myFavoritedata = MyFavoritedata(Get.find());

//   MyServices myServices = Get.find();

//   getData() async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await myFavoritedata
//         .getData(myServices.sharedPreferences.getString("id").toString());
//     print("===============================@ Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List responsedata = response['data'];
//         data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
//         print('data 2222222222222222222222');
//         print(data);
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//   }

//   @override
//   void onInit() {
//     getData();

//     super.onInit();
//   }
// }