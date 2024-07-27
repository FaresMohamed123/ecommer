import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/itemsController.dart';
import '../../../data/model/categoriesmodel.dart';

class ListCategoresItems extends GetView<ItemscontrollerImp> {
  const ListCategoresItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
            index: index,
          );
        },
        itemCount: controller.categories.length,
        shrinkWrap: true,
      ),
    );
  }
}

class Categories extends GetView<ItemscontrollerImp> {
  const Categories(
      {super.key, required this.index, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //  controller.gotoItems(
        // controller.categories, index);
        controller.changecat(index,

            categoriesModel.categoriesId!.toString());
      },
      child: Column(
        children: [
          GetBuilder<ItemscontrollerImp>(
            builder: (controller) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,
                vertical: 5),
                decoration: controller.selectedcat == index
                    ? const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: AppColor.primaryColor, width: 3),),
                      )
                    : null,
                child: Text(
                  '${categoriesModel.categoriesName}',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColor.grey, fontSize: 20),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
