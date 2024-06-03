// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
// import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';

// import 'Features/ProductDetails/widgets/ProductDetailsboady.dart';

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
//       home: const SplashScreenView(),
//       routes: {
//         'SnacksView': (context) => const SnacksView(),
//         'ProductDetailsBody': (context) => const ProductDetailsBody(),
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerymarket/Features/Auth/Login/Widgets/LoginViewboady.dart';

import 'Features/Auth/Cubit/LoginStates.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(), // Provide the LoginCubit
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        home: LoginViewBody(), // Set LoginViewBody as the home
      ),
    );
  }
}
