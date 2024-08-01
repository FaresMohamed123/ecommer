import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/itemsController.dart';
import '../../core/class/handlingdataview.dart';
import '../../data/model/itemsModel.dart';
import '../widget/home/customappbar.dart';
import '../widget/items/CustomListItems.dart';
import '../widget/items/listcategoresitems.dart';
import '../widget/search/listItemsScearch.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 ItemsControllerImp controller=  Get.put(ItemsControllerImp());

    return Scaffold(
      body:  Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Customappbar(
                mycontroller: controller.search!,
                title: 'Find product',
                onPressedsearch: () {
                  controller.onSearchItems();
                },
                onPressedIconnotif: () {},
                onPressedIconfa: () {
                  // controller.gotoMyFavroite();
                },
                onChangedSearch: (value) {
                  controller.checkSearch(value);
                },
              ),
              const SizedBox(height: 20),
              const ListCategoriesItems(),
           GetBuilder<ItemsControllerImp>(
        builder: (controller) =>   HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: !controller.isSearch
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (BuildContext context, index) {
                          return CustomListItems(
                            itemsModel: ItemsModel.fromJson(
                              controller.data[index],
                            ),
                          );
                        },)
                    : ListItemsScearch(listdatamodel: controller.listdata),
              ),
           ), ],
          ),
        ),
      
    );
  }
}


// favoriteController.isFavorite[controller.data[index]
                            // ['items_id']] = controller.data[index]['favorite'];