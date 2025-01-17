import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/cart/CustomAppBarCart.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarCart('View ', 'Address'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.addressAdd);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        child: ListView(
          children: const [],
        ),
      ),
    );
  }
}
