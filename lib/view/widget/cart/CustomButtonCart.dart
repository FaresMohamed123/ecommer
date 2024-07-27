import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonCart extends StatelessWidget {
  const CustomButtonCart({
    super.key,
    this.onPressed,
    required this.textbutton,
  });

  final VoidCallback? onPressed;
  final String textbutton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: MaterialButton(
        padding: const EdgeInsets.all(13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
