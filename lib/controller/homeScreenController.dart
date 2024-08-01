import 'package:ecommerces_app/view/screen/cart.dart';
import 'package:ecommerces_app/view/screen/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/screen/page/settingPage.dart';

abstract class Homescreencontroller extends GetxController {
  changePage(int i);
}

class HomescreencontrollerImp extends Homescreencontroller {
   bool active = false;
  int currentpage = 0;
  List<Widget> listpage = [
    const HomePage(),
    const SettingPage(),
    const Cart(),//cart
    const HomePage(),
    const SettingPage(),
  ];
  List titlebottomappbar = [
    'basket',
    'Setting',
    'home',
    'notif',
    'profile',
    
  ];
  List iconbottomappbar = [
    Icons.shopping_basket_outlined,
    Icons.settings,
    Icons.home,
    Icons.notifications_active,
    Icons.person_pin_sharp,
    
  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

}
