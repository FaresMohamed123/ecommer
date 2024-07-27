import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../../linkapi.dart';
import '../widget/CustomItemsCartList.dart';
import '../widget/cart/BottomNavigationBarCart.dart';
import '../widget/cart/CustomAppBarCart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());

    return Scaffold(
      bottomNavigationBar: BottomNavigationBarCart(
        Shopping: '${cartController.totalcountitems}',
        price: '${cartController.priceorders}',
        total: '${cartController.sumCount()}',
      ),
      appBar: CustomAppBarCart(),
      body: GetBuilder<CartController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: cartController.statusRequest,
          widget: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ...List.generate(
                      cartController.data.length,
                      (index) => CustomItemsCartList(
                        count: '${cartController.data[index].countitems}',
                        name: '${cartController.data[index].itemsName}',
                        price: '${cartController.data[index].itemsPrice}',
                        image:
                            '${AppLink.imagestItems}/${cartController.data[index].itemsImage}',
                        onPressedAdd: () {
                        cartController.add('${cartController.data[index].itemsId}');
                        },
                        onPressedRemove: () {
                          cartController.delete('${cartController.data[index].itemsId}');
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}