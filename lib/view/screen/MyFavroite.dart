import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/myfavoritecontroller.dart';
import '../widget/home/customappbar.dart';

class MyFavroite extends StatelessWidget {
  const MyFavroite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Customappbar(
              title: 'Find product',
              onPressedsearch: () {},
              onPressedIconnotif: () {},
              onPressedIconfa: () {},
              onChangedSearch: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
