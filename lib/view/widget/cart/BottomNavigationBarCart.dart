import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerces_app/view/widget/cart/CustomButtonCart.dart';

import '../../../core/constant/color.dart';
import '../../screen/cart/my_cart_view.dart';

class BottomNavigationBarCart extends StatelessWidget {
  const BottomNavigationBarCart({
    Key? key,
    required this.price,
    required this.Shopping,
    required this.total,
  }) : super(key: key);

  final String price;
  final String Shopping;
  final String total;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price ',
                    style: TextStyle(
                        color: AppColor.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '$price\$ ',
                    style: const TextStyle(color: AppColor.grey, fontSize: 18),
                  ),
                ]),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Shopping ',
                    style: TextStyle(
                        color: AppColor.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '$Shopping\$ ',
                    style: const TextStyle(color: AppColor.grey, fontSize: 18),
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(color: AppColor.primaryColor),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Price ',
                    style: TextStyle(
                        color: AppColor.secoundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    '$total\$ ',
                    style: const TextStyle(
                      color: AppColor.secoundColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 10),
          CustomButtonCart(
            textbutton: 'Place Order',
            onPressed: () {
              Get.to(() => const MyCartView());
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
