import 'package:flutter/material.dart';

class CustomsButton extends StatelessWidget {
  const CustomsButton({
    super.key, required this.onPressed,
    required this.title,
  });
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 120),
        backgroundColor: const Color(0xffD3BA9A),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22)
 ,
      ),
    );
  }
}
