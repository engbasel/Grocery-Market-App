import 'package:flutter/material.dart';

import '../Views/FullPackageDestailsProductInfo.dart';

class FullPackageDestailsProductItem extends StatelessWidget {
  final VoidCallback? onTap;

  const FullPackageDestailsProductItem({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              'assets/ProductDetails/Milkimage.png', // Replace with your image asset path
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 5),
            const FullPackageDestailsProductInfo(),
          ],
        ),
      ),
    );
  }
}
