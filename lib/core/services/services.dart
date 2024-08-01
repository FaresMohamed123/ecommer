// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../firebase_options.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
//v20.14.0
//13.13.2
  Future<MyServices> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('usersid', '89');
    sharedPreferences.setString('id', '89');
   // sharedPreferences.setString('itemsid', '1');
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
