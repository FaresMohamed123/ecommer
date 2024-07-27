
import 'package:flutter/material.dart';

import '../../../controller/productDetaliscontroller.dart';
import '../../../core/constant/color.dart';

class CustomListgenerate extends StatelessWidget {
  const CustomListgenerate({
    super.key,
    required this.controller,
  });

  final ProductdetaliscontrollerImp controller;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ...List.generate(
        3,
        (index) => Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 5, vertical: 10),
          height: 60,
          alignment: Alignment.center,
          width: 90,
          decoration: BoxDecoration(
            color: index == 0 ? Colors.black : Colors.grey,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: AppColor.grey),
          ),
          child: Text(
            controller.title[index],
            style: const TextStyle(color: Colors.white),
          ),
        ),
      )
    ]);
  }
}
