import 'package:ecommerces_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomAppBar extends StatelessWidget {
  const CustomButtomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: AppColor.grey,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey[800]),
        ),
      ],
    );
  }
}
