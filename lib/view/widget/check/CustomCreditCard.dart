import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CreditCardWidget(
            bankName: 'FMC Bank',
            cardBgColor: Colors.black87,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (onCreditCardModel) {}),
        CreditCardForm(
            isHolderNameVisible: true,
            autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (onCreditCardModel) {
              cardNumber = onCreditCardModel.cardNumber;
              expiryDate = onCreditCardModel.expiryDate;
              cardHolderName = onCreditCardModel.cardHolderName;
              cvvCode = onCreditCardModel.cvvCode;
              setState(() {});
            },
            formKey: widget.formKey),
      ],
    );
  }
}
