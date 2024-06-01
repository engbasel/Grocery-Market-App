// import 'package:flutter/material.dart';

// import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';

// import 'Features/Snacks/views/Snacksview.dart';

// void main(List<String> args) {
//   runApp(const GroceryApp());
// }

// class GroceryApp extends StatelessWidget {
//   const GroceryApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Your App Name',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // home: const MoreInfoView(),
//       home: const SplashScreenView(), //
//       // home: const SnacksViewboady(), //
// //
//       // home: const LoginView(), //
//       // const WishlistViews(),
//       routes: const {SnacksView => 'SnacksView'},
//     );
//   }
// }
// // Calendar
// // OTP (One-Time Password)
// // Image Packer
// // Search Data
// // Mapping
// // Mapping
import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';

import 'Features/ProductDetails/widgets/ProductDetailsboady.dart';

void main(List<String> args) {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenView(),
      routes: {
        'SnacksView': (context) => const SnacksView(),
        'ProductDetailsBody': (context) => const ProductDetailsBody(),
      },
    );
  }
}
