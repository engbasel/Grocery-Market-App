import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const ProductCardWidget({
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
            const SizedBox(width: 16),
            const Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nestle Nido Full Cream Milk Powder Instant',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
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
            ),
          ],
        ),
      ),
    );
  }
}
