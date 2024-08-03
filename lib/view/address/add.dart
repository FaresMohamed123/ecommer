import 'package:flutter/material.dart';

import '../widget/cart/CustomAppBarCart.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // AddAddressController controllerpage = Get.put(AddAddressController());
    return Scaffold(
      appBar: CustomAppBarCart('Add ','Address'),
     floatingActionButton: FloatingActionButton(
      
      onPressed: () {
       
     }, child: const Icon(Icons.add),),
      body:  Container(
        child: ListView(
          children: const [],
        ),
      ),);
  }
}