import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/CustomCurrentLocationCard.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/CustomNavigationButton.dart';

import '../Widgets/DeliveryLocationItem.dart';

class ScheduledView extends StatelessWidget {
  const ScheduledView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          CustomNavigationButton(
            textColors: Colors.green,
            color: const Color(0xffe2f3ec),
            text: 'Show Delivery Details',
            onTap: () {},
          ),
          const SizedBox(height: 25),
          CustomNavigationButton(
            color: const Color(0xffe2f3ec),
            textColors: Colors.red,
            text: 'Show Delivery Details',
            onTap: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Delivery Location',
                  style: TextStyle(
                    color: Color(0xff777777),
                  ),
                ),
              ],
            ),
          ),
          const DeliveryLocationItem(),
          const Divider(
            endIndent: 25,
            indent: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text('Subtotal'),
                Spacer(),
                Text('BDT362'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text('Delivery Charge'),
                Spacer(),
                Text('BDT412'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
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
                    color: Color(0xff777777),
                  ),
                ),
              ],
            ),
          ),
          const CustomCurrentLocationCard(),
          const Text(
            'Cash on delivery has some potential risks of spreading contamination. You can select other payment methods for a contactless safe delivery.',
          ),
          CustomNavigationButton(
            textColors: Colors.green,
            color: const Color(0xfff37a20),
            text: 'Contact with Support',
            onTap: () {},
          ),
          CustomNavigationButton(
            textColors: Colors.blueGrey,
            color: Colors.red,
            text: 'Cancel Order',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
