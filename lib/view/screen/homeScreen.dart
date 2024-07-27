import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homeScreenController.dart';
import '../widget/home/customBottomAppBarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreencontrollerImp());
    return GetBuilder<HomescreencontrollerImp>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar:  const CustomBottomAppBarHome(),
        body: controller.listpage.elementAt(controller.currentpage),
      );
    });
  }
}

        
       