// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocerymarket/Features/Auth/Login/Cubit/LoginCubit.dart';
// import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
// import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';

// void main() {
//   runApp(const GroceryApp());
// }

// class GroceryApp extends StatelessWidget {
//   const GroceryApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => LoginCubit(), // Provide the LoginCubit
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Grocery App',
//         // home: LoginViewBody(), // Set LoginViewBody as the home
//         home: SplashScreenView(),
//         routes: {
//           SnacksView( ) => 'SnacksView',
//         }, // Set LoginViewBody as the home
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerymarket/Features/Auth/Login/Cubit/LoginCubit.dart';
import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(), // Provide the LoginCubit
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        // home: LoginViewBody(), // Set LoginViewBody as the home
        home: const SplashScreenView(),
        routes: {
          'SnacksView': (context) =>
              const SnacksView(), // Define route for SnacksView
        }, // Set LoginViewBody as the home
      ),
    );
  }
}
