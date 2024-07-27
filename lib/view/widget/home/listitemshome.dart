import 'package:ecommerces_app/data/model/itemsModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color.dart';
import '../../../linkapi.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:controller.items.length,
        itemBuilder: (context, index) {
          return Items(itemsModel: ItemsModel.fromJson(controller.items[index]),);
        },
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key, required this.itemsModel,
  
  });

  final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(
              '${AppLink.imagestItems}/${itemsModel.itemsImage}',
              height: 100,
              width: 150,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(
              color: AppColor.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            left: 10,
            child: Text(
              '${itemsModel.itemsName}',
              style: const TextStyle(
                color: AppColor.backgroundcolor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
