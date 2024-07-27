import 'package:ecommerces_app/core/constant/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.onPressed,
    required this.title,
  });
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: Colors.green,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Styles.style22,
      ),
    );
  }
}
