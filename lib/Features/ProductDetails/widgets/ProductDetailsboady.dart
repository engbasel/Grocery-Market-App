import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ListItemProductDetails.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductCard.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      children: [
        CustomAppBar(
          horizontalPadding: 0,
          verticalPadding: 0,
          title: "Product Details",
          onTap: () {},
          leadingFunction: () {},
          leadingIcon: Icons.arrow_back_ios,
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/ProductDetails/Milkimage.png',
          height: 250,
          width: 250,
        ),
        const SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListItemProductDetails(
                ImageLink: 'assets/ProductDetails/Milkimage.png',
                onTap: () {},
                width: 100,
                height: 100,
              ),
              ListItemProductDetails(
                ImageLink: 'assets/ProductDetails/Milkimage.png',
                onTap: () {},
                width: 100,
                height: 100,
              ),
              ListItemProductDetails(
                ImageLink: 'assets/ProductDetails/Milkimage.png',
                onTap: () {},
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            'Arla DANO Full Cream Milk Powder Instant',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Row(
          children: [
            SizedBox(width: 15),
            Padding(
              padding: EdgeInsets.only(right: 10), // Add padding here
              child: Text(
                '1 KG',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
              ),
            ),
            SizedBox(width: 220),
            Padding(
              padding: EdgeInsets.only(left: 10), // Add padding here
              child: Text(
                '৳182',
                style: TextStyle(
                    color: Color(0xFF5EC401), fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
            ),
            const Text('Dairy Products')
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
            ),
            const Expanded(
              child: Text(
                'Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,',
                style: TextStyle(
                  fontSize: 16.0,
                  // Optional: Add more style properties as needed
                ),
                textAlign: TextAlign.start, // Optional: Adjust alignment
                softWrap: true, // Ensures text wraps to the next line
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'You can also check this items',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const ProductCard(),
        const ProductCard(),
        const ProductCard(),
        CustomButton(
          color: 0xff5EC401,
          height: 50,
          iconButton: Icons.abc,
          onTap: () {},
          titleButton: 'Basel',
          width: 350,
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
