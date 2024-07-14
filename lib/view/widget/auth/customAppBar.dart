import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

PreferredSizeWidget? appBar(String title){
return  AppBar(
  elevation: 0,
        title:  Text(
          title,
          style: const TextStyle(fontSize: 20, color: AppColor.grey),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: AppColor.grey,
        //   ),
        // ),
      );


}