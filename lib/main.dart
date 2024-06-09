// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocerymarket/Features/Auth/Login/Cubit/LoginCubit.dart';
// import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
// import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   await Hive.openBox('userBox'); // Open a box for storing user data
//   runApp(const GroceryApp());
// }

// class GroceryApp extends StatelessWidget {
//   const GroceryApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => LoginCubit(), // Provide the LoginCubit
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Grocery App',
//         // home: LoginViewBody(), // Set LoginViewBody as the home
//         home: const SplashScreenView(),
//         // home: SignupView(),
//         routes: {
//           'SnacksView': (context) =>
//               const SnacksView(), // Define route for SnacksView
//         }, // Set LoginViewBody as the home
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerymarket/Features/Auth/Login/Cubit/LoginCubit.dart';
import 'package:grocerymarket/Features/Auth/Signup/Cubit/SignupCubit.dart'; // Import the SignupCubit
import 'package:grocerymarket/Features/Snacks/views/Snacksview.dart';
import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Features/Auth/Signup/Cubit/SignupStatus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userBox'); // Open a box for storing user data
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
            create: (context) => LoginCubit()), // Provide LoginCubit
        BlocProvider<SignupCubit>(
            create: (context) => SignupCubit()), // Provide SignupCubit
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        home: const SplashScreenView(),
        routes: {
          'SnacksView': (context) =>
              const SnacksView(), // Define route for SnacksView
        },
      ),
    );
  }
}
// ccc