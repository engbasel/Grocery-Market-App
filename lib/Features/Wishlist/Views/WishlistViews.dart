import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductCard.dart';
import 'package:grocerymarket/Features/Wishlist/Views/Add%20to%20Wishlist.dart';
import 'package:grocerymarket/Features/Wishlist/Views/WishlistDetailsView.dart';

class WishlistViews extends StatelessWidget {
  const WishlistViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientBackgroundScaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xff5ec401),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const AddToWishlistView();
              },
            ));
          },
        ),
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
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const WishlistDetailsView();
                },
              ));
            },
          ),
          const ProductCardWidget(),
          const ProductCardWidget(),
        ],
      ),
    );
  }
}
