import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productDetaliscontroller.dart';
import '../../../core/constant/color.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductdetaliscontrollerImp controller =
        Get.put(ProductdetaliscontrollerImp());
    return Container(
        margin: const EdgeInsets.all(10),
        height: 45,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: AppColor.secoundColor,
          textColor: Colors.white,
          onPressed: () {
            controller.gotoCart();
          },
          child: const Text('Go to cart',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ));
  }
}
