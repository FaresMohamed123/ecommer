
  import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

AppBar CustomAppBarCart(String title ,String suptitle) {
    return AppBar(
      title:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25, color: AppColor.grey),
          ),
          Text(
           suptitle,
            style: const TextStyle(fontSize: 25, color: AppColor.primaryColor),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
