import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class RowImageSvg extends StatelessWidget {
   RowImageSvg({
    super.key,
    required this.image,
    this.isActive =false,
  });
  final String image;
   bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color:isActive? const Color(0xffD3BA9A):Colors.black),
        color: Colors.white,
      ),
      child: Center(child: SvgPicture.asset(image)),
    );
  }
}
