import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/ProductDetails/widgets/ProductDetailsboady.dart';

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
      home:
          const ProductDetailsBody(), // Set SplashScreenView as the initial screen
    );
  }
}
// Calendar
// OTP (One-Time Password)
// Image Packer
// Search Data
// Mapping
// Mapping
