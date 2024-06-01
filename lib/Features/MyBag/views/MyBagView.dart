import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/DeliveryStatusView.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/CustomCurrentLocationCard.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/DeliveryLocationItem.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/FullPackageDestailsProductItem.dart';

class MyBagView extends StatelessWidget {
  const MyBagView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Bag',
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SectionTitle(title: 'Product'),

            const FullPackageDestailsProductItem(),
            const FullPackageDestailsProductItem(),
            CustomButton(
              TextColor: const Color(0xff5EC401),
              widthAtFirstOfButton: 55,
              titleButton: 'Add More Product',
              color: 0xffE3F4ED,
              width: 250,
              height: 50,
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   child: Row(
            //     children: [
            //       Text('Expected Date & TIme'),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20),

            const SectionTitle(title: 'Delivery Location'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: DeliveryLocationItem(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: OrderSummary(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: CustomCurrentLocationCard(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: CustomButton(
                TextColor: Colors.white,
                widthBetweenItems: 50,
                iconButtonAtEnd: Icons.arrow_forward,
                widthAtFirstOfButton: 120,
                color: 0xff5EC401,
                titleButton: 'Place Order',
                height: 50,
                width: 300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
