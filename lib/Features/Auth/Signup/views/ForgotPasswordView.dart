import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          CustomAppBar(
            title: 'Forget password',
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Image.asset('assets/Auth/passwored.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Enter the password'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
                'It looks like you already have an account with this number. Please enter the password to proceed.'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PhoneNumberField(),
          ),
          const Text('Forgot Password?'),
        ],
      ),
    );
  }
}
