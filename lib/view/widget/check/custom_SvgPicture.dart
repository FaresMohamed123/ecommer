
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: 10,
      child: IconButton(
        icon: SvgPicture.asset('assets/images/arrow.svg'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
