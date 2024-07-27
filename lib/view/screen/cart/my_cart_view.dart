
import 'package:ecommerces_app/view/screen/cart/paymen_details_views.dart';
import 'package:ecommerces_app/view/widget/check/build_AppBar.dart';
import 'package:ecommerces_app/view/widget/check/custom_button.dart';
import 'package:ecommerces_app/view/widget/check/list_row_Images.dart';
import 'package:ecommerces_app/view/widget/check/order_info_item.dart';
import 'package:ecommerces_app/view/widget/check/total_price.dart';
import 'package:flutter/material.dart';

///////////////////////////////////////////////+ r'$'
class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(title: 'My Cart', context: context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 18,
              ),
              Expanded(child: Image.asset('assets/images/basket_image.png')),
              const SizedBox(height: 20),
              const OrderInfoItem(
                title: 'Order Subtoal',
                price: '330'r'$',
              ),
              const OrderInfoItem(
                title: 'Discount',
                price: '0',
              ),
              const OrderInfoItem(
                title: 'Shipping',
                price: '10',
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
                endIndent: 20,
                indent: 20,
              ),
              const TotalPrice(
                title: 'Total',
                price: '330.97',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Complete Payment',
                onPressed: () {
                  // x
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) => const PaymentMethodsBottomSheet(),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        const ListRowImage(),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomButton(
              onPressed: () {
       
                
               
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymenDetailsViews()));
               
               
              },
              title: 'Continue'),
        )
      ],
    );
  }
}
