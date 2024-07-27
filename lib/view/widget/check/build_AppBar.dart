import 'dart:core'as core;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/styles.dart';

AppBar buildAppBar({required final core.String title ,required final BuildContext context }) {
    return AppBar(
        title: Text(
         title,
          style: Styles.style25,
        ),
        centerTitle: true,
        leading: IconButton(icon: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
        onPressed: () => Navigator.pop(context),),
      );
  }

