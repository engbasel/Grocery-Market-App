// // ignore: avoid_renaming_method_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Wishlist/Widgets/ImageUploadWidget.dart';

import '../../../Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class AddToWishlistView extends StatelessWidget {
  const AddToWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Add New',
        leadingFunction: () {
          Navigator.pop(context);
        },
        leadingIcon: Icons.arrow_back,
        onTap: () {},
      ),
      body: const AddToWishlistBody(),
    );
  }
}

class AddToWishlistBody extends StatelessWidget {
  const AddToWishlistBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                prefixIcon: FontAwesomeIcons.mountain,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: customTextFormField(
                labelText: 'Brand (Optional )',
                hintText: 'Brand (Optional )',
                prefixIcon: FontAwesomeIcons.personHalfDress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ImageUploadWidget(),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CustomButton(
              iconButtonAtEnd: Icons.save,
              color: 0xff5ec401,
              height: 50,
              width: 350,
              widthAtFirstOfButton: 100,
              widthBetweenItems: 50,
              titleButton: 'Save to Wishlist',
            ),
          ],
        ),
      ),
    );
  }
}
