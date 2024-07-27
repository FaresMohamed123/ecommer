import 'package:get/get.dart';
import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/itemsdata.dart';
import '../data/model/itemsModel.dart';

abstract class Itemscontroller extends GetxController {
  intialData();
  changecat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(ItemsModel itemsModel);
}

class ItemscontrollerImp extends Itemscontroller {
  List categories = [];
  int? selectedcat;
  String? catid;

  late StatusRequest statusRequest;
  Itemsdata itemsdata = Itemsdata(Get.find());
  List data = [];
  MyServices myServices = Get.find();

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedcat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  changecat(val, catval) {
    selectedcat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  @override
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsdata.getData(
        categoryid, myServices.sharedPreferences.getString("id").toString());
    print("===============================@ Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToPageProductDetails(itemsModel) {
    Get.toNamed(AppRoute.productdetallis, arguments: {
      'itemsModel': itemsModel,
    });
  }
}
