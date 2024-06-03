import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerymarket/Features/Auth/Cubit/LoginCubit.dart';
import 'package:grocerymarket/Features/Auth/Login/Widgets/LoginViewboady.dart';

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
