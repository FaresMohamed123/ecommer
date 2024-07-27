
import 'package:ecommerces_app/view/screen/cart/thankyou.dart';
import 'package:ecommerces_app/view/widget/check/CustomCreditCard.dart';
import 'package:ecommerces_app/view/widget/check/build_AppBar.dart';
import 'package:ecommerces_app/view/widget/check/buttom.dart';
import 'package:ecommerces_app/view/widget/check/list_row_Images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymenDetailsViews extends StatefulWidget {
  const PaymenDetailsViews({super.key});

  @override
  State<PaymenDetailsViews> createState() => _PaymenDetailsViewsState();
}

class _PaymenDetailsViewsState extends State<PaymenDetailsViews> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'PaymenDetails', context: context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: ListRowImage()),
          SliverToBoxAdapter(
              child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          )),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomsButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                        setState(() {
                     // autovalidateMode = AutovalidateMode.always;
                    
                      //  Navigator.push(context,MaterialPageRoute(builder: (context) => const Thankyou(),));
                   Get.to(() => const Thankyou());
                       
                     });
                    }
                  },
                  title: 'Place Order',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
