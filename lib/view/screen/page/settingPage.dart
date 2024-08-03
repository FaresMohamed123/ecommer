import 'package:ecommerces_app/core/constant/color.dart';
import 'package:ecommerces_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/SettingController.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Settingcontroller controller = Get.put(Settingcontroller());
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                      height: Get.width / 3, color: AppColor.primaryColor),
                  Positioned(
                    top: Get.width / 4.2,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: AppColor.backgroundcolor,
                          borderRadius: BorderRadius.circular(100)),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColor.backgroundcolor,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ListTile(
                      trailing: Icon(Icons.account_circle),
                      title: Text('Profile'),
                    ),
                    const Divider(),
                    ListTile(
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      title: const Text('Disable Notifications'),
                    ),
                    const Divider(),
                    ListTile(
                      trailing: const Icon(Icons.location_on_outlined),
                      onTap: () {
                        Get.toNamed(AppRoute.addressView);
                      },
                      title: const Text('Address'),
                    ),
                    const Divider(),
                    const ListTile(
                      trailing: Icon(Icons.phone_callback_outlined),
                      title: Text('Contact us'),
                    ),
                    const ListTile(
                      trailing: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                    const Divider(),
                    ListTile(
                      trailing: const Icon(Icons.exit_to_app),
                      title: const Text('Logout'),
                      onTap: () {
                        controller.logout();
                      },
                    ),
                    const Divider(),
                    const ListTile(
                      trailing: Icon(Icons.help_outline),
                      title: Text('Help'),
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
