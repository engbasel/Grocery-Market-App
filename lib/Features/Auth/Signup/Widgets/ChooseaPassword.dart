import 'package:flutter/material.dart';

import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';
import '../../../../Core/widgets/customBackground.dart';

class ChooseaPassword extends StatelessWidget {
  const ChooseaPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackgroundScaffold(
        children: [
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
                'It looks like you already have an account in this number. Please enter the password to proceed '),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PhoneNumberField(),
          ),
          const Text('Forgot  Password?'),
        ],
      ),
    );
  }
}
