import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class ChoosePasswordView extends StatelessWidget {
  const ChoosePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingFunction: () {},
        leadingIcon: Icons.arrow_back,
        title: 'Choose a Password',
        onTap: () {},
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'For security & safety, please choose a password',
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset('assets/Auth/Signup.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: PasswordField(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: PasswordField(),
          ),
        ],
      ),
    );
  }
}
