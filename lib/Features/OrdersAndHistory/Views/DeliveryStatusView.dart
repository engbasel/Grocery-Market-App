import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/FullPackageDestailsView.dart';

import '../Widgets/CustomCurrentLocationCard.dart';
import '../Widgets/CustomNavigationButton.dart';
import '../Widgets/DeliveryLocationItem.dart';

class DeliveryStatusView extends StatelessWidget {
  const DeliveryStatusView({super.key});

  static const EdgeInsets _horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets _sectionPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SectionTitle(title: 'Your order is received'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomButton(
                height: 50,
                width: 350,
                textColor: Colors.green,
                buttonColor: const Color(0xffe2f3ec),
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
                buttonColor: const Color(0xffe2f3ec),
                textColor: Colors.red,
                text: 'Show Full Package',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FullPackageDetailsView();
                    },
                  ));
                },
              ),
            ),
            const SectionTitle(title: 'Delivery Man'),
            const Padding(
              padding: _sectionPadding,
              child: DeliveryMan(),
            ),
            const SectionTitle(title: 'Delivery Location'),
            const Padding(
              padding: _sectionPadding,
              child: DeliveryLocationItem(),
            ),
            const Divider(
              endIndent: 25,
              indent: 25,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: OrderSummary(),
            ),
            const SectionTitle(title: 'Payment Method'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomCurrentLocationCard(),
            ),
            const Padding(
              padding: _sectionPadding,
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

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DeliveryStatusView._horizontalPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xff777777),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SummaryRow(label: 'Subtotal', value: 'BDT362'),
        SummaryRow(label: 'Delivery Charge', value: 'BDT412'),
        SummaryRow(label: 'Total', value: 'BDT774'),
      ],
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const SummaryRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(label),
          const Spacer(),
          Text(value),
        ],
      ),
    );
  }
}
