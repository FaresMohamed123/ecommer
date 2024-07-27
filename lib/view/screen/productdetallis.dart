import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/productDetaliscontroller.dart';
import '../widget/productdetalis/CustomImages.dart';
import '../widget/productdetalis/custombuttomnavigationBar.dart';
import '../widget/productdetalis/customlistgenerate.dart';
import '../widget/productdetalis/priceandcount.dart';

class Productdetallis extends GetView<ProductdetaliscontrollerImp> {
  const Productdetallis({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ProductdetaliscontrollerImp());
    return Scaffold(
      bottomNavigationBar: const CustomButtomNavigationBar(),
      body: GetBuilder<ProductdetaliscontrollerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              child: ListView(
                children: [
                  const CustomImages(),
                  const SizedBox(height: 100),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${controller.itemsModel.itemsName}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(color: AppColor.black)),
                        const PricesAndCount(),
                        Text("${controller.itemsModel.itemsDesc}",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith()),
                        const SizedBox(height: 10),
                        Text('Color',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color:AppColor.black)),
                        CustomListgenerate(controller: controller)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
