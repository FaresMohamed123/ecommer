import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../controller/home_controller.dart';
import '../../../data/model/categoriesmodel.dart';
import '../../../linkapi.dart';

class ListCategoresHome extends GetView<HomeControllerImp> {
  const ListCategoresHome({super.key});

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
                CategoriesModel.fromJson(controller.categories[index]), index: index,
          );
        },
        itemCount: controller.categories.length,
        shrinkWrap: true,
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  const Categories( {super.key, required  this.index, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoItems(
            controller.categories, index,categoriesModel.categoriesId!.toString() );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 70,
            height: 70,
            child: SvgPicture.network(
                '${AppLink.imagestCategories}/${categoriesModel.categoriesImage}'),
          ),
          Text(
            '${categoriesModel.categoriesName}',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
