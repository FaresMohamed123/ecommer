
import 'package:flutter/material.dart';

class CustomListgenerate extends StatelessWidget {
  const CustomListgenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .2 + 20,
      left: 20 + 21,
      right: 20 + 21,
      child: Row(
        children: List.generate(
          20,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                height: 2,
                color: const Color(0xffBBBBBB),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
