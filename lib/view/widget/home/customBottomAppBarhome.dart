import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/homeScreenController.dart';
import 'custombuttomappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomescreencontrollerImp>(builder: (controller) {
      return CurvedNavigationBar(
        index: 2,
        backgroundColor: AppColor.primaryColor,
        onTap: (int i) {
          controller.changePage(i);
        },
        items: [
          CustomButtomAppBar(
            icon: controller.iconbottomappbar[2],
            title: controller.titlebottomappbar[2],
          ),
          CustomButtomAppBar(
            icon: controller.iconbottomappbar[1],
            title: controller.titlebottomappbar[1],
          ),
         
          CustomButtomAppBar(
            icon: controller.iconbottomappbar[0],
            title: controller.titlebottomappbar[0],
          ),
          CustomButtomAppBar(
            icon: controller.iconbottomappbar[3],
            title: controller.titlebottomappbar[3],
          ),
           CustomButtomAppBar(
            icon: controller.iconbottomappbar[4],
            title: controller.titlebottomappbar[4],
          ),
        ],
      );
    });
  }
}
