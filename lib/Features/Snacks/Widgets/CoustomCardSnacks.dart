import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';

class SnackProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;
  final String productPrice;

  const SnackProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: width * 0.45, // Responsive width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      imagePath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      productDescription,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '৳$productPrice',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomButton(
                      widthAtFirstOfButton: 5,
                      iconButtonAtFirst: Icons.shop,
                      widthBetweenItems: 0,
                      widthInFirstOfContainer: 25,
                      color: 0xff5EC401,
                      height: 35,
                      onTap: () {},
                      titleButton: 'Add to Bag',
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
