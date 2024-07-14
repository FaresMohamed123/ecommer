import 'package:flutter/material.dart';

class CustombuttonauthImages extends StatelessWidget {
  const CustombuttonauthImages({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/facebook-logo-126.png',
                        fit: BoxFit.cover,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/chrome-logo-8794.png',
                        fit: BoxFit.cover,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/twitter.png',
                        fit: BoxFit.cover,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
              ],
            );
  }
}