import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/FullPackageDestailsProductItem.dart';
import 'package:grocerymarket/Features/Wishlist/Views/Add to Wishlist.dart';

import '../../../Core/widgets/CustomButton.dart';

class FullPackageDetailsView extends StatelessWidget {
  const FullPackageDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0072B8), Color(0xFF00B4DB)],
          ),
        ),
        child: Column(
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back,
              leadingFunction: () {
                Navigator.pop(context);
              },
              title: 'Full Package Details',
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Text('Products'),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  FullPackageDestailsProductItem(),
                  FullPackageDestailsProductItem(),
                  FullPackageDestailsProductItem(),
                ],
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              widthAtFirstOfButton: 55,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddToWishlistView(),
                  ),
                );
              },
              color: 0xff5EC401,
              height: 50,
              width: 250,
              titleButton: 'Add New Product',
            ),
          ],
        ),
      ),
    );
  }
}
