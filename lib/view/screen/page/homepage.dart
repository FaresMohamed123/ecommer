import 'package:ecommerces_app/controller/home_controller.dart';
import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/home/customCardHome.dart';
import '../../widget/home/customTitleHome.dart';
import '../../widget/home/customappbar.dart';
import '../../widget/home/listCategoreshome.dart';
import '../../widget/home/listitemshome.dart';

class HomePage extends GetView<HomeControllerImp> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                Customappbar(
                  title: 'Find product',
                  onPressedsearch: () {},
                  onPressedIconnotif: () {
                    
                  },
                  onPressedIconfa: () {
                    controller.gotoMyFavroite();
                  },
                  onChangedSearch: (value) {},
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCardHome(
                      title: 'A summer surprise',
                      body: 'Cashback 20%',
                    ),
                    Customtitlehome(title: 'Categories'),
                    ListCategoresHome(),
                    Customtitlehome(title: 'Product for you'),
                    ListItemsHome(),
                    Customtitlehome(title: 'Offer'),
                    ListItemsHome(),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
