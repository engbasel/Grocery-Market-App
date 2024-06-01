import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/CustomCurrentLocationCard.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/CustomNavigationButton.dart';

import '../Widgets/DeliveryLocationItem.dart';

class EstimatedDeliveryView extends StatelessWidget {
  const EstimatedDeliveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your order is received',
                    style: TextStyle(
                      color: Color(0xff777777),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomButton(
                height: 50,
                width: 350,
                buttonColor: Colors.green,
                textColor: const Color(0xffe2f3ec),
                text: 'Show Delivery Details',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomButton(
                height: 50,
                width: 350,
                textColor: const Color(0xffe2f3ec),
                buttonColor: Colors.red,
                text: 'Show Delivery Details',
                onTap: () {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff777777),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: DeliveryLocationItem(),
            ),
            const Divider(
              endIndent: 25,
              indent: 25,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Text('Subtotal'),
                  Spacer(),
                  Text('BDT362'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Text('Delivery Charge'),
                  Spacer(),
                  Text('BDT412'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Text('Total'),
                  Spacer(),
                  Text('BDT412'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff777777),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomCurrentLocationCard(
                textOne: '',
                textTwo: '',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'Cash on delivery has some potential risks of spreading contamination. You can select other payment methods for a contactless safe delivery.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomButton(
                height: 50,
                width: 350,
                textColor: Colors.white,
                buttonColor: const Color(0xfff37a20),
                text: 'Contact with Support',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
