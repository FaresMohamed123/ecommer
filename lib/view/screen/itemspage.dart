import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/favorite_controller.dart';
import '../../controller/itemsController.dart';
import '../../data/model/itemsModel.dart';
import '../widget/home/customappbar.dart';
import '../widget/items/CustomListItems.dart';
import '../widget/items/listcategoresitems.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemscontrollerImp());
    FavoriteController favoriteController = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Customappbar(
                onPressedIconnotif: () {}  ,
                onChangedSearch: (value) {},
                title: 'Find product',
                onPressedsearch: () {},
                onPressedIconfa: () {
                  favoriteController.gotoMyFavroite();
                },
              ),
              const SizedBox(height: 10),
              const ListCategoresItems(),
              GetBuilder<ItemscontrollerImp>(builder: (controller) {
                return HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemCount: controller.data.length,
                      itemBuilder: (context, index) {
                        favoriteController.isfavorite[controller.data[index]
                            ['items_id']] = controller.data[index]['favorite'];
                        return CustomListItems(
                          itemsModel: ItemsModel.fromJson(
                            controller.data[index],
                          ),
                        );
                      }),
                );
              })
            ],
          )),
    );
  }
}
