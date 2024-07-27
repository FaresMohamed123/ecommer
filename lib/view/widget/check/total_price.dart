import 'package:flutter/material.dart';
import '../../../core/constant/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key,   required this.title,
    required this.price,
  });
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
          children: [
            Text(title, style: Styles.style24),
            const Spacer(),
            Text(price + r'$', style: Styles.style24),
          ],
        ),
    );
  }
}