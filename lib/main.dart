import '/bindings/intialbindings.dart';
import '/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

LocaleController controller = Get.put(LocaleController());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: MyTranslation(),

        locale: controller.language,
        debugShowCheckedModeBanner: false,
        theme: controller.appTheme,
       initialRoute: AppRoute.homescreen,
      initialBinding: InitialBindings(),
        getPages: getPagess);
  }
}     
 
 //113
