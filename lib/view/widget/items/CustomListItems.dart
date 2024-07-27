import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerces_app/data/model/itemsModel.dart';
import 'package:get/get.dart';
import '../../../controller/favorite_controller.dart';
import '../../../controller/itemsController.dart';
import '../../../linkapi.dart';
import '/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomListItems extends GetView<ItemscontrollerImp> {
  const CustomListItems({
    super.key,
    required this.itemsModel,
  });
  final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToPageProductDetails(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                   tag: "${itemsModel.itemsId}",
                  child: CachedNetworkImage(
                      imageUrl:
                       "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
                    fit: BoxFit.fill,
                    height: 100,
                  )),
              const SizedBox(height: 10),
              Text(
                '${itemsModel.itemsName}',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Row(
                children: [
                  const Text(
                    'Rating 3.5',
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  ...List.generate(
                      5,
                      (index) => index < 3
                          ? const Icon(
                              Icons.star,
                              size: 15,
                              color: AppColor.black,
                            )
                          : const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${itemsModel.itemsPrice}\$',
                    style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  GetBuilder<FavoriteController>(builder: (controller) {
                    return IconButton(
                        onPressed: () {
                          if (controller.isfavorite[itemsModel.itemsId] ==
                              '1') {
                            controller.setFavorite(itemsModel.itemsId, '0');
                            controller.removeFavorite(itemsModel.itemsId.toString());
                          } else {
                            controller.setFavorite(itemsModel.itemsId, '1');
                            controller.addFavorite(itemsModel.itemsId.toString());
                          }
                        },
                        icon: Icon(
                          controller.isfavorite[itemsModel.itemsId] == '1'
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: AppColor.primaryColor,
                        ));
                  })
                ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
