import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../../../core/constant/color.dart';

class Customtexttitleauth extends StatelessWidget {
  const Customtexttitleauth(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, 
               foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(100, 10),
                    const Offset(250, 100),
                    <Color>[
                      Colors.red,
                      Colors.yellow,
                    ],
                  ),),
        ),
       
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: AppColor.grey),
          ),
        ),
      ],
    );
  }
}
