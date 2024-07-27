
  import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

AppBar CustomAppBarCart() {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My ",
            style: TextStyle(fontSize: 25, color: AppColor.grey),
          ),
          Text(
            "Cart",
            style: TextStyle(fontSize: 25, color: AppColor.primaryColor),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
