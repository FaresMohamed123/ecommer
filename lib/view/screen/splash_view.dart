import 'dart:async';
import '/core/constant/color.dart';
import '/core/constant/imgaeasset.dart';
import '/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _stertDetlay() {
    _timer = Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoute.language);
    });
  }

  @override
  void initState() {
    super.initState();
    _stertDetlay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColor.primaryColor,
                AppColor.backgroundcolor,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(50),
                  ),
                  const CircleAvatar(
                    radius: 90,
                 backgroundColor:  AppColor.primaryColor,
                    backgroundImage: AssetImage(AppImageAsset.logo1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Discounts Store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Special Discount For You',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 25),
                  child: const Text(
                    'Version 1.1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
