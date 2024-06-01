import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/Payment/Widgets/PaymentMethodItem.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment Method',
        onTap: () {},
      ),
      body: const SafeArea(
        child: Column(
          children: [
            PaymentMethodItem(
              iconRow: FaIcon(FontAwesomeIcons.creditCard),
              textCard: 'Credit / Debit Card',
            ),
            PaymentMethodItem(
              iconRow: FaIcon(FontAwesomeIcons.moneyBill),
              textCard: 'Bkash Online Payment',
            ),
            PaymentMethodItem(
              iconRow: FaIcon(FontAwesomeIcons.paypal),
              textCard: 'Cash on Delivery',
            ),
          ],
        ),
      ),
    );
  }
}
