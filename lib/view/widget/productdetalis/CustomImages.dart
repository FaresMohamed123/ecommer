
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerces_app/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productDetaliscontroller.dart';
import '../../../core/constant/color.dart';

class CustomImages extends GetView<ProductdetaliscontrollerImp> {
  const CustomImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(
            color: AppColor.secoundColor,
          ),
        ),
        Positioned(
          top: 30,
          right: Get.width / 8,
          left: Get.width / 8,
          child: Hero(
            tag:'${controller.itemsModel.categoriesId!}',
            child:CachedNetworkImage(imageUrl: 
             '${AppLink.imagestItems}/${controller.itemsModel.itemsImage}',
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
