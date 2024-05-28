import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductCard.dart';

class WishlistViews extends StatelessWidget {
  const WishlistViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackgroundWidget(
        children: [
          CustomAppBar(
            leadingIcon: Icons.arrow_back,
            leadingFunction: () {
              Navigator.pop(context);
            },
            title: 'Wishlist',
            onTap: () {},
          ),
          const ProductCard(),
          const ProductCard(),
          const ProductCard(),
        ],
      ),
    );
  }
}
