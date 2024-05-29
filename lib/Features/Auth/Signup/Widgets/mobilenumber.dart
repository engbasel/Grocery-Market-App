import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';

import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';

class mobilenumber extends StatelessWidget {
  const mobilenumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackgroundScaffold(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Image.asset(
              'assets/Auth/PhonneNumbericon.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Enter your mobile number'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
                'We need to verify you. We will send you a one time verification code. '),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PhoneNumberField(),
          )
        ],
      ),
    );
  }
}
