import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class Customtextformauth extends StatelessWidget {
  const Customtextformauth({super.key, required this.hintText, required this.labeltext, required this.iconData,required  this.mycontroller,required this.validator,required this.keyboardType,  this.obscureText, this.onTapIcon});
  final String hintText;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText ;
  final void Function()? onTapIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ==null ||  obscureText ==true ?false :true,
      keyboardType: keyboardType,
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14, color: AppColor.grey),
        suffixIcon: InkWell(onTap:onTapIcon , child:  Icon(iconData),),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 9),
          child:  Text(labeltext),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
       
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: AppColor.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
