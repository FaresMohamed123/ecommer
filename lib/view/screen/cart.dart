import 'package:ecommerces_app/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../widget/CustomItemsCartList.dart';
import '../widget/cart/BottomNavigationBarCart.dart';
import '../widget/cart/CustomAppBarCart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());

    return Scaffold(
      bottomNavigationBar: GetBuilder<CartController>(builder: (context) {
        return BottomNavigationBarCart(
          Shopping: '000',
          price: '${cartController.priceorders}',
          total: '000',
        );
      }),
      appBar: CustomAppBarCart('My ','Cart'),
      body: GetBuilder<CartController>(builder: (cartController) {
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
                        price: '${cartController.data[index].itemsprice}',
                        image: '${cartController.data[index].itemsImage}',
                        onPressedAdd: ()async {
                       
                      await    cartController.add(
                              cartController.data[index].itemsId.toString());
                                 cartController.refreshPage();
                        },
                        onPressedRemove: () async{
                         
                       await  cartController.delete(
                              cartController.data[index].itemsId.toString());
                                cartController.refreshPage();
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
