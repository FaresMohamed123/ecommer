import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class Customtitlehome extends StatelessWidget {
  const Customtitlehome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            color: AppColor.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
