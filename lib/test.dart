import 'package:lottie/lottie.dart';
import '/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';
import 'core/constant/imgaeasset.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;

  intialdata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    intialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body:Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 250, height: 250))
    );
  }
}