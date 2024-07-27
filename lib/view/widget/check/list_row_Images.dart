import 'package:ecommerces_app/view/widget/check/row_image_Svg.dart';
import 'package:flutter/material.dart';

class ListRowImage extends StatefulWidget {
  const ListRowImage({super.key});

  @override
  State<ListRowImage> createState() => _ListRowImageState();
}

class _ListRowImageState extends State<ListRowImage> {
  final List<String> listrowImages = [
    'assets/images/card.svg',
    'assets/images/master_card.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listrowImages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => setState(() => activeIndex = index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: RowImageSvg(
                image: listrowImages[index],
                isActive: index == activeIndex,
              ),
            ),
          );
        },
      ),
    );
  }
}
