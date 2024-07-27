import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productDetaliscontroller.dart';
import '../../../core/constant/color.dart';

class PricesAndCount extends GetView<ProductdetaliscontrollerImp> {
  const PricesAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: [
          IconButton(
            onPressed: () {
              
              controller.add();
            },
            icon: const Icon(Icons.add),
          ),
          GetBuilder<ProductdetaliscontrollerImp>(builder: (context) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Text('${controller.countitems}',
                  style: const TextStyle(
                    fontSize: 20,
                  )),
            );
          }),
          IconButton(
            onPressed: () {
             
              controller.remove();
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
      const Spacer(),
      Text('${controller.itemsModel.itemsPrice}\$',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: AppColor.primaryColor, height: 1.1)),
    ]);
  }
}
