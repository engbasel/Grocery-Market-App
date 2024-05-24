import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Snacks/Widgets/SnacksViewboady.dart';

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
          const SnacksViewboady(), // Set SplashScreenView as the initial screen
    );
  }
}
// Calendar
// OTP (One-Time Password)
// Image Packer
// Search Data
// Mapping
// Mapping
