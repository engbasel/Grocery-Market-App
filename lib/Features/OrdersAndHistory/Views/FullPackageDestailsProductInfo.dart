import 'package:flutter/material.dart';

import '../Widgets/IncrementDecrementWidget.dart';

class FullPackageDestailsProductInfo extends StatelessWidget {
  const FullPackageDestailsProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Nestle Nido Full Cream Milk Powder Instant',
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '৳342',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '৳270',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IncrementDecrementWidget(),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
