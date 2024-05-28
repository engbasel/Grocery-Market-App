import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Wishlist/Widgets/ImageUploadWidget.dart';

import '../../../Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import '../../../Core/widgets/customBackground.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class AddToWishlistView extends StatelessWidget {
  const AddToWishlistView({super.key});
  @override
  Widget build(BuildContext context) {
    return const AddToWishlistBody();
  }
}

class AddToWishlistBody extends StatelessWidget {
  const AddToWishlistBody({super.key});

  @override
  Widget build(BuildContext context) {
    double Wadth = MediaQuery.sizeOf(context).height;

    return GradientBackgroundScaffold(
      children: [
        CustomAppBar(
          title: 'Add New',
          onTap: () {},
          leadingFunction: () {},
          leadingIcon: Icons.arrow_back,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: customTextFormField(
            labelText: 'Product Name',
            hintText: 'Product Name',
            prefixIcon: FontAwesomeIcons.basketShopping,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: customTextFormField(
            labelText: 'Amount',
            hintText: 'Amount',
            prefixIcon: FontAwesomeIcons.code,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: customTextFormField(
            labelText: 'Brand (Optional )',
            hintText: 'Brand (Optional )',
            prefixIcon: FontAwesomeIcons.tiktok,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ImageUploadWidget(),
        ),
        SizedBox(
          height: Wadth * 0.1,
        ),
        const CustomButton(
          iconButtonAtEnd: Icons.save,
          color: 0xff5ec401,
          height: 50,
          width: 350,
          widthAtFirstOfButton: 100,
          widthBetweenItems: 50,
          titleButton: 'Save to Wishlist',
        )
      ],
    );
  }
}

// ignore: avoid_renaming_method_names
