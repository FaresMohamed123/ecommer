import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomItemsCartList extends StatelessWidget {
  const CustomItemsCartList({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    required this.image,
    required this.onPressedAdd,
    required this.onPressedRemove,
  });
  final String name;
  final String price;
  final String count;
  final String image;
  final void Function()? onPressedAdd;
  final void Function()? onPressedRemove;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                )),
            Expanded(
              flex: 3,
              child: ListTile(
                  title: Text(name, style: const TextStyle(fontSize: 15)),
                  subtitle: Text(
                    '$price\$',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontFamily: 'sans',
                        color: AppColor.primaryColor,
                        fontSize: 17),
                  )),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                        onPressed: onPressedAdd, icon: const Icon(Icons.add)),
                  ),
                  SizedBox(
                    height: 20,
                    child:
                        Text(count, style: const TextStyle(fontFamily: 'sans')),
                  ),
                  SizedBox(
                    height: 35,
                    child: IconButton(
                        onPressed: onPressedRemove,
                        icon: const Icon(Icons.remove)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
