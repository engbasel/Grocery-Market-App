import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Widgets/FullPackageDestailsProductItem.dart';

import '../../../Core/widgets/CustomButton.dart';
import '../../Wishlist/Views/Add to Wishlist.dart';

class FullPackageDestailsView extends StatelessWidget {
  const FullPackageDestailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackgroundScaffold(
      children: [
        CustomAppBar(
          leadingIcon: Icons.arrow_back,
          leadingFunction: () {
            Navigator.pop(context);
          },
          title: 'Full Package Destails',
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
        const FullPackageDestailsProductItem(),
        const FullPackageDestailsProductItem(),
        const FullPackageDestailsProductItem(),
        const SizedBox(height: 50),
        CustomButton(
          widthAtFirstOfButton: 55,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const AddToWishlistView();
              },
            ));
          },
          color: 0xff5EC401,
          height: 50,
          width: 250,
          titleButton: 'Add New Product',
        ),
      ],
    );
  }
}
