import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:ecommerces_app/linkapi.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/controller/home_controller.dart';
import '/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Find Product",
                            hintStyle: const TextStyle(fontSize: 18),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: Colors.grey[200]),
                      )),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        width: 60,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              size: 30,
                              color: Colors.grey[600],
                            )),
                      )
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Stack(children: [
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: const ListTile(
                          title: Text("A summer surprise",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          subtitle: Text("Cashback 20%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                        ),
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: AppColor.secoundColor,
                              borderRadius: BorderRadius.circular(160)),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                      height: 100,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 10);
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categories.length,
                        //  shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: SvgPicture.network(
                                    '${AppLink.imagestCategories}/${controller.categories[index]['categories_image']}'),
                              ),
                              Text(controller.categories[index]
                                  ['categories_name']),
                            ],
                          );
                        },
                      )),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.items.length,
                          itemBuilder:  (context, index) {
                          return Stack(
                            children: [
                              Container(
                                child: Image.network(
                                  '${AppLink.imagestItems}/${controller.items[index]['items_image']}',
                                  fit: BoxFit.fill,
                                  width: 150,
                                  height: 100,
                                ),
                              ),
                              Text(controller.items[index]['items_name']),
                            ],
                          );
                        }),
                      )
                ],
              )),
        );
      }),
    );
  }
}
