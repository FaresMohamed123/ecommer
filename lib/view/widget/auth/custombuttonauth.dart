import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class Custombuttonauth extends StatelessWidget {
  const Custombuttonauth({super.key,required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: AppColor.primaryColor,
      textColor: AppColor.backgroundcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: onPressed,
      child:  Text(title),
    );
  }
}
