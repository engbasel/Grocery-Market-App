import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ListItemProductDetails.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductCard.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  horizontalPadding: 0,
                  verticalPadding: 0,
                  title: "Product Details",
                  onTap: () {},
                  leadingFunction: () {},
                  leadingIcon: Icons.arrow_back_ios,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const WishlistDetailsView();
                    //     },
                    //   ),
                    // );
                  },
                  child: Image.asset(
                    'assets/ProductDetails/Milkimage.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProductImageListItem(
                        imageLink: 'assets/ProductDetails/Milkimage.png',
                        onTap: () {},
                        width: 100,
                        height: 100,
                      ),
                      ProductImageListItem(
                        imageLink: 'assets/ProductDetails/Milkimage.png',
                        onTap: () {},
                        width: 100,
                        height: 100,
                      ),
                      ProductImageListItem(
                        imageLink: 'assets/ProductDetails/Milkimage.png',
                        onTap: () {},
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Arla DANO Full Cream Milk Powder Instant',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        '1 KG',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 29),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '৳182',
                        style: TextStyle(
                          color: Color(0xFF5EC401),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.list),
                    ),
                    const Text('Dairy Products'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.list),
                      ),
                      const Expanded(
                        child: Text(
                          'Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'You can also check this items',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const ProductCardWidget(),
                const ProductCardWidget(),
                const ProductCardWidget(),
                CustomButton(
                  widthInFirstOfContainer: 0,
                  widthBetweenItems: 0,
                  color: 0xff5EC401,
                  height: 50,
                  iconButtonAtEnd: Icons.shop,
                  onTap: () {},
                  titleButton: 'Basel',
                  width: 350,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
