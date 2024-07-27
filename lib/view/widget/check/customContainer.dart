
import 'package:ecommerces_app/core/constant/styles.dart';
import 'package:ecommerces_app/view/widget/check/order_info_item.dart';
import 'package:ecommerces_app/view/widget/check/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xffD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: Text(
                  'Thank You!',
                  style: Styles.style25,
                )),
            Text(
              'You transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(height: 30),
            const OrderInfoItem(
              title: 'Date',
              price: '01/24/2023',
            ),
            const OrderInfoItem(
              title: 'Time',
              price: '10:15 AM',
            ),
            const OrderInfoItem(
              title: 'To',
              price: 'Sam Louis',
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 2),
            const TotalPrice(
              title: 'Total',
              price: '50.97',
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: SvgPicture.asset('assets/images/master_card.svg'),
                title: Text(
                  'Credit Card',
                  style: Styles.style20,
                ),
                subtitle: Text(
                  'Master card**12',
                  style: Styles.style15,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    FontAwesomeIcons.barcode,
                    size:80,
                   ),
                
                  Container(
                    alignment: Alignment.center,
                    width: 113,
                    height: 58,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2, color: Colors.green),
                      ),
                    ),
                    child: const Text('PAID',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
