import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentMethodItem extends StatelessWidget {
  final String textCard;
  final FaIcon iconRow;

  const PaymentMethodItem({
    super.key,
    required this.textCard,
    required this.iconRow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Add your onPressed functionality here
            },
            icon: iconRow,
          ),
          Text(textCard),
        ],
      ),
    );
  }
}
