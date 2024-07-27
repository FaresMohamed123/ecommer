
import 'package:ecommerces_app/view/widget/check/customContainer.dart';
import 'package:ecommerces_app/view/widget/check/custom_CircleAvatar.dart';
import 'package:ecommerces_app/view/widget/check/custom_SvgPicture.dart';
import 'package:ecommerces_app/view/widget/check/custom_list_generate.dart';
import 'package:flutter/material.dart';

class Thankyou extends StatelessWidget {
  const Thankyou({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CustomContainer(),
              CustomSvgPicture(),
              CustomCircleAvatar(),
              CustomCircleAvatarLeft(),
              CustomCircleAvatarRight(),
              CustomListgenerate(),
              
            ],
          ),
        ),
      ),
    );
  }
}
