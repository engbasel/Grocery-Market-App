import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductCard.dart';
import 'package:grocerymarket/Features/Wishlist/Views/Add%20to%20Wishlist.dart';
import 'package:grocerymarket/Features/Wishlist/Views/WishlistDetailsView.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class WishlistViews extends StatelessWidget {
  const WishlistViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff5ec401),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AddToWishlistView();
              },
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back,
              leadingFunction: () {
                Navigator.pop(context);
              },
              title: 'Wishlist',
              onTap: () {},
            ),
            ProductCardWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WishlistDetailsView();
                    },
                  ),
                );
              },
            ),
            ProductCardWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WishlistDetailsView();
                    },
                  ),
                );
              },
            ),
            ProductCardWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WishlistDetailsView();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
