import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomAuthtTitleAccount extends StatelessWidget {
  const CustomAuthtTitleAccount(
      {super.key, required this.title, required this.subTitle,required this.onTap});
  final String title;
  final String subTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColor.grey,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              subTitle,
              style: const TextStyle(
                  fontSize: 15,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
