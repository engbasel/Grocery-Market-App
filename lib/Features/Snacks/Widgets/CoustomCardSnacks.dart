// // import 'package:flutter/material.dart';
// // import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';

// // class CustomCardSnacks extends StatelessWidget {
// //   final String imagePath;
// //   final String productName;
// //   final String productDescription;
// //   final String productPrice;

// //   const CustomCardSnacks({
// //     super.key,
// //     required this.imagePath,
// //     required this.productName,
// //     required this.productDescription,
// //     required this.productPrice,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     var height = MediaQuery.of(context).size.height;
// //     var width = MediaQuery.of(context).size.width;

// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
// //       child: LayoutBuilder(
// //         builder: (context, constraints) {
// //           return Container(
// //             width: width * 0.45, // Responsive width
// //             height: height * 0.5, // Responsive height
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               color: Colors.red,
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.grey.withOpacity(0.2),
// //                   spreadRadius: 2,
// //                   blurRadius: 5,
// //                   offset: const Offset(0, 3),
// //                 ),
// //               ],
// //             ),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 // const SizedBox(height: 5),

// //                 ClipRRect(
// //                   borderRadius:
// //                       const BorderRadius.vertical(top: Radius.circular(25)),
// //                   child: Image.asset(
// //                     imagePath,
// //                     fit: BoxFit.contain,
// //                     height: constraints.maxWidth *
// //                         0.8, // Dynamic height based on width
// //                     width: double.infinity,
// //                   ),
// //                 ),
// //                 Text(
// //                   productName,
// //                   style: const TextStyle(
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 // const SizedBox(height: 5),
// //                 // Padding(
// //                 //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //                 //   child: Text(
// //                 //     productDescription,
// //                 //     style: TextStyle(
// //                 //       fontSize: 14,
// //                 //       color: Colors.grey[600],
// //                 //     ),
// //                 //   ),
// //                 // ),
// //                 // const SizedBox(height: 5),
// //                 Text(
// //                   '\$$productPrice',
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     color: Colors.green[700],
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 // const SizedBox(height: 5),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 4),
// //                   child: CustomButton(
// //                     widthAtFirstOfButton: 5,
// //                     iconButtonAtFirst: Icons.shop,
// //                     widthBetweenItems: 0,
// //                     widthInFirstOfContainer: 25,
// //                     color: 0xff5EC401,
// //                     height: 35,
// //                     onTap: () {},
// //                     titleButton: 'Add to Bag',
// //                     width: width * 0.4,
// //                   ),
// //                 ),
// //                 // const SizedBox(height: 5),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';

// class CustomCardSnacks extends StatelessWidget {
//   final String imagePath;
//   final String productName;
//   final String productDescription;
//   final String productPrice;

//   const CustomCardSnacks({
//     super.key,
//     required this.imagePath,
//     required this.productName,
//     required this.productDescription,
//     required this.productPrice,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           return Container(
//             width: width * 0.45, // Responsive width
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.2),
//                   spreadRadius: 2,
//                   blurRadius: 5,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ClipRRect(
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(10)),
//                   child: Image.asset(
//                     imagePath,
//                     fit: BoxFit.cover,
//                     height: constraints.maxWidth *
//                         0.5, // Dynamic height based on width
//                     width: double.infinity,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     productName,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text(
//                     productDescription,
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     '৳$productPrice',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.green[700],
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: CustomButton(
//                     widthAtFirstOfButton: 5,
//                     iconButtonAtFirst: Icons.shop,
//                     widthBetweenItems: 0,
//                     widthInFirstOfContainer: 25,
//                     color: 0xff5EC401,
//                     height: 35,
//                     onTap: () {},
//                     titleButton: 'Add to Bag',
//                     width: double.infinity,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/CustomButton.dart';

class CustomCardSnacks extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;
  final String productPrice;

  const CustomCardSnacks({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                      // fit: BoxFit.fill,
                      // height: constraints.maxWidth *
                      // 0.4, // Dynamic height based on width
                      // width: double.infinity,
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
